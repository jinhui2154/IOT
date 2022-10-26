#pragma once
#include <type_traits>
#include <string>

struct _tag{static constexpr bool is_tag = true;};
struct json_tag : public _tag{};
struct proto_tag: public _tag{};

template<class T, class Tag>
std::enable_if_t<Tag::is_tag> serialize(const T&, std::string&);

template<class T, class Tag>
std::enable_if_t<Tag::is_tag> deserialize(const std::string&, T&);
