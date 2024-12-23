#include<iostream>
#include<fstream>
#include<json.hpp>
#define CPPHTTPLIB_OPENSSL_SUPPORT
#include<httplib.h>

using json = nlohmann::json;

int main() {
//HTTP TO DeepSeek
httplib::Client cli("https://api.deepseek.com");

// 构造 JSON 数据 使用 nlohmann/json
json request_data = {
        {"model", "deepseek-chat"},
        {"messages", json::array({
            {
	      {"role", "system"}, 
	      {"content", "You are a helpful assistant."}}
        })},
	{"stream", false}
    };

std::string json_data = request_data.dump();

// 设置请求头
httplib::Headers headers = {
        {"Content-Type", "application/json"},
        {"Authorization", "Bearer sk-2bd8f6d5075d4e34b0a8aa25d46e46e6"}  // 替换成你的 API Key
    };

// 发起0次请求
auto res = cli.Post("/chat/completions", headers,json_data, "application/json");
// 处理用户输入的对象
std::string user_input;

while (true) {
	std::cout << "DeepSeek: " << std::endl;
	if (res) {
		// 解析 JSON 数据,打印 AI 回复
		json response_data = json::parse(res->body);
		std::cout << response_data["choices"][0]["message"]["content"] << std::endl;

        	// AI回复添加进上下文
		request_data["messages"].push_back({
			{"role", "assistant"},
			{"content", response_data["choices"][0]["message"]["content"]}
						});

		}
	else {
		auto err = res.error();
		std::cout << "Error code: " << err << std::endl;
		}
	
	// 读取用户输入
	std::cout << "User: ";
	while (std::cin.peek() == '\n') std::cin.ignore();
	std::getline(std::cin, user_input);
	// 用户输入添加进上下文
	request_data["messages"].push_back({
		{"role", "user"},
		{"content", user_input}
               });
	
	// 再次发起请求
	json_data = request_data.dump();
	res = cli.Post("/chat/completions", headers, json_data, "application/json");

}


}
