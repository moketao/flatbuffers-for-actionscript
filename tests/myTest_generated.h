// automatically generated by the FlatBuffers compiler, do not modify

#ifndef FLATBUFFERS_GENERATED_MYTEST_JASON_FLAT_TEST_H_
#define FLATBUFFERS_GENERATED_MYTEST_JASON_FLAT_TEST_H_

#include "flatbuffers/flatbuffers.h"

namespace Jason {
namespace Flat {
namespace Test {

struct TestAppend;

struct TextureData;

struct Texture;

enum Color {
  Color_Rad = 1,
  Color_Green = 2,
  Color_Blue = 3,
  Color_MIN = Color_Rad,
  Color_MAX = Color_Blue
};

inline const char **EnumNamesColor() {
  static const char *names[] = { "Rad", "Green", "Blue", nullptr };
  return names;
}

inline const char *EnumNameColor(Color e) { return EnumNamesColor()[static_cast<int>(e) - static_cast<int>(Color_Rad)]; }

enum Any {
  Any_NONE = 0,
  Any_TextureData = 1,
  Any_Texture = 2,
  Any_MIN = Any_NONE,
  Any_MAX = Any_Texture
};

inline const char **EnumNamesAny() {
  static const char *names[] = { "NONE", "TextureData", "Texture", nullptr };
  return names;
}

inline const char *EnumNameAny(Any e) { return EnumNamesAny()[static_cast<int>(e)]; }

inline bool VerifyAny(flatbuffers::Verifier &verifier, const void *union_obj, Any type);

	///testAppend注释
struct TestAppend FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  enum {
    VT_TEST_NUM = 4,
    VT_TEST_NUM2 = 6
  };
  int32_t test_num() const { return GetField<int32_t>(VT_TEST_NUM, 0); }
  bool mutate_test_num(int32_t _test_num) { return SetField(VT_TEST_NUM, _test_num); }
  int32_t test_num2() const { return GetField<int32_t>(VT_TEST_NUM2, 0); }
  bool mutate_test_num2(int32_t _test_num2) { return SetField(VT_TEST_NUM2, _test_num2); }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyField<int32_t>(verifier, VT_TEST_NUM) &&
           VerifyField<int32_t>(verifier, VT_TEST_NUM2) &&
           verifier.EndTable();
  }
};

struct TestAppendBuilder {
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_test_num(int32_t test_num) { fbb_.AddElement<int32_t>(TestAppend::VT_TEST_NUM, test_num, 0); }
  void add_test_num2(int32_t test_num2) { fbb_.AddElement<int32_t>(TestAppend::VT_TEST_NUM2, test_num2, 0); }
  TestAppendBuilder(flatbuffers::FlatBufferBuilder &_fbb) : fbb_(_fbb) { start_ = fbb_.StartTable(); }
  TestAppendBuilder &operator=(const TestAppendBuilder &);
  flatbuffers::Offset<TestAppend> Finish() {
    auto o = flatbuffers::Offset<TestAppend>(fbb_.EndTable(start_, 2));
    return o;
  }
};

inline flatbuffers::Offset<TestAppend> CreateTestAppend(flatbuffers::FlatBufferBuilder &_fbb,
    int32_t test_num = 0,
    int32_t test_num2 = 0) {
  TestAppendBuilder builder_(_fbb);
  builder_.add_test_num2(test_num2);
  builder_.add_test_num(test_num);
  return builder_.Finish();
}

	///文理数据结构
struct TextureData FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  enum {
    VT_IMAGE_SIZE = 4,
    VT_IMAGE_DATA = 6,
    VT_TEST_NUM2 = 8,
    VT_IMAGE_TEST = 10
  };
  int32_t image_size() const { return GetField<int32_t>(VT_IMAGE_SIZE, 0); }
  bool mutate_image_size(int32_t _image_size) { return SetField(VT_IMAGE_SIZE, _image_size); }
  const flatbuffers::Vector<uint8_t> *image_data() const { return GetPointer<const flatbuffers::Vector<uint8_t> *>(VT_IMAGE_DATA); }
  flatbuffers::Vector<uint8_t> *mutable_image_data() { return GetPointer<flatbuffers::Vector<uint8_t> *>(VT_IMAGE_DATA); }
  int32_t test_num2() const { return GetField<int32_t>(VT_TEST_NUM2, 0); }
  bool mutate_test_num2(int32_t _test_num2) { return SetField(VT_TEST_NUM2, _test_num2); }
  int16_t image_test() const { return GetField<int16_t>(VT_IMAGE_TEST, 0); }
  bool mutate_image_test(int16_t _image_test) { return SetField(VT_IMAGE_TEST, _image_test); }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyField<int32_t>(verifier, VT_IMAGE_SIZE) &&
           VerifyField<flatbuffers::uoffset_t>(verifier, VT_IMAGE_DATA) &&
           verifier.Verify(image_data()) &&
           VerifyField<int32_t>(verifier, VT_TEST_NUM2) &&
           VerifyField<int16_t>(verifier, VT_IMAGE_TEST) &&
           verifier.EndTable();
  }
};

struct TextureDataBuilder {
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_image_size(int32_t image_size) { fbb_.AddElement<int32_t>(TextureData::VT_IMAGE_SIZE, image_size, 0); }
  void add_image_data(flatbuffers::Offset<flatbuffers::Vector<uint8_t>> image_data) { fbb_.AddOffset(TextureData::VT_IMAGE_DATA, image_data); }
  void add_test_num2(int32_t test_num2) { fbb_.AddElement<int32_t>(TextureData::VT_TEST_NUM2, test_num2, 0); }
  void add_image_test(int16_t image_test) { fbb_.AddElement<int16_t>(TextureData::VT_IMAGE_TEST, image_test, 0); }
  TextureDataBuilder(flatbuffers::FlatBufferBuilder &_fbb) : fbb_(_fbb) { start_ = fbb_.StartTable(); }
  TextureDataBuilder &operator=(const TextureDataBuilder &);
  flatbuffers::Offset<TextureData> Finish() {
    auto o = flatbuffers::Offset<TextureData>(fbb_.EndTable(start_, 4));
    return o;
  }
};

inline flatbuffers::Offset<TextureData> CreateTextureData(flatbuffers::FlatBufferBuilder &_fbb,
    int32_t image_size = 0,
    flatbuffers::Offset<flatbuffers::Vector<uint8_t>> image_data = 0,
    int32_t test_num2 = 0,
    int16_t image_test = 0) {
  TextureDataBuilder builder_(_fbb);
  builder_.add_test_num2(test_num2);
  builder_.add_image_data(image_data);
  builder_.add_image_size(image_size);
  builder_.add_image_test(image_test);
  return builder_.Finish();
}

inline flatbuffers::Offset<TextureData> CreateTextureData(flatbuffers::FlatBufferBuilder &_fbb,
    int32_t image_size = 0,
    const std::vector<uint8_t> *image_data = nullptr,
    int32_t test_num2 = 0,
    int16_t image_test = 0) {
  return CreateTextureData(_fbb, image_size, image_data ? 0 : _fbb.CreateVector<uint8_t>(*image_data), test_num2, image_test);
}

	///文理结构
struct Texture FLATBUFFERS_FINAL_CLASS : private flatbuffers::Table {
  enum {
    VT_TEXTURE_NAME = 4,
    VT_NUM_TEXTURES = 6,
    VT_TEXTURES = 8,
    VT_NUM_TEST = 10,
    VT_NUM_TEST2 = 14,
    VT_TEST_APPEND = 16
  };
  const flatbuffers::String *texture_name() const { return GetPointer<const flatbuffers::String *>(VT_TEXTURE_NAME); }
  flatbuffers::String *mutable_texture_name() { return GetPointer<flatbuffers::String *>(VT_TEXTURE_NAME); }
  int16_t num_textures() const { return GetField<int16_t>(VT_NUM_TEXTURES, 0); }
  bool mutate_num_textures(int16_t _num_textures) { return SetField(VT_NUM_TEXTURES, _num_textures); }
  const flatbuffers::Vector<flatbuffers::Offset<TextureData>> *textures() const { return GetPointer<const flatbuffers::Vector<flatbuffers::Offset<TextureData>> *>(VT_TEXTURES); }
  flatbuffers::Vector<flatbuffers::Offset<TextureData>> *mutable_textures() { return GetPointer<flatbuffers::Vector<flatbuffers::Offset<TextureData>> *>(VT_TEXTURES); }
  int16_t num_test() const { return GetField<int16_t>(VT_NUM_TEST, 30); }
  bool mutate_num_test(int16_t _num_test) { return SetField(VT_NUM_TEST, _num_test); }
  int16_t num_test2() const { return GetField<int16_t>(VT_NUM_TEST2, 0); }
  bool mutate_num_test2(int16_t _num_test2) { return SetField(VT_NUM_TEST2, _num_test2); }
  const TestAppend *test_append() const { return GetPointer<const TestAppend *>(VT_TEST_APPEND); }
  TestAppend *mutable_test_append() { return GetPointer<TestAppend *>(VT_TEST_APPEND); }
  bool Verify(flatbuffers::Verifier &verifier) const {
    return VerifyTableStart(verifier) &&
           VerifyField<flatbuffers::uoffset_t>(verifier, VT_TEXTURE_NAME) &&
           verifier.Verify(texture_name()) &&
           VerifyField<int16_t>(verifier, VT_NUM_TEXTURES) &&
           VerifyField<flatbuffers::uoffset_t>(verifier, VT_TEXTURES) &&
           verifier.Verify(textures()) &&
           verifier.VerifyVectorOfTables(textures()) &&
           VerifyField<int16_t>(verifier, VT_NUM_TEST) &&
           VerifyField<int16_t>(verifier, VT_NUM_TEST2) &&
           VerifyField<flatbuffers::uoffset_t>(verifier, VT_TEST_APPEND) &&
           verifier.VerifyTable(test_append()) &&
           verifier.EndTable();
  }
};

struct TextureBuilder {
  flatbuffers::FlatBufferBuilder &fbb_;
  flatbuffers::uoffset_t start_;
  void add_texture_name(flatbuffers::Offset<flatbuffers::String> texture_name) { fbb_.AddOffset(Texture::VT_TEXTURE_NAME, texture_name); }
  void add_num_textures(int16_t num_textures) { fbb_.AddElement<int16_t>(Texture::VT_NUM_TEXTURES, num_textures, 0); }
  void add_textures(flatbuffers::Offset<flatbuffers::Vector<flatbuffers::Offset<TextureData>>> textures) { fbb_.AddOffset(Texture::VT_TEXTURES, textures); }
  void add_num_test(int16_t num_test) { fbb_.AddElement<int16_t>(Texture::VT_NUM_TEST, num_test, 30); }
  void add_num_test2(int16_t num_test2) { fbb_.AddElement<int16_t>(Texture::VT_NUM_TEST2, num_test2, 0); }
  void add_test_append(flatbuffers::Offset<TestAppend> test_append) { fbb_.AddOffset(Texture::VT_TEST_APPEND, test_append); }
  TextureBuilder(flatbuffers::FlatBufferBuilder &_fbb) : fbb_(_fbb) { start_ = fbb_.StartTable(); }
  TextureBuilder &operator=(const TextureBuilder &);
  flatbuffers::Offset<Texture> Finish() {
    auto o = flatbuffers::Offset<Texture>(fbb_.EndTable(start_, 7));
    return o;
  }
};

inline flatbuffers::Offset<Texture> CreateTexture(flatbuffers::FlatBufferBuilder &_fbb,
    flatbuffers::Offset<flatbuffers::String> texture_name = 0,
    int16_t num_textures = 0,
    flatbuffers::Offset<flatbuffers::Vector<flatbuffers::Offset<TextureData>>> textures = 0,
    int16_t num_test = 30,
    int16_t num_test2 = 0,
    flatbuffers::Offset<TestAppend> test_append = 0) {
  TextureBuilder builder_(_fbb);
  builder_.add_test_append(test_append);
  builder_.add_textures(textures);
  builder_.add_texture_name(texture_name);
  builder_.add_num_test2(num_test2);
  builder_.add_num_test(num_test);
  builder_.add_num_textures(num_textures);
  return builder_.Finish();
}

inline flatbuffers::Offset<Texture> CreateTexture(flatbuffers::FlatBufferBuilder &_fbb,
    const char *texture_name = nullptr,
    int16_t num_textures = 0,
    const std::vector<flatbuffers::Offset<TextureData>> *textures = nullptr,
    int16_t num_test = 30,
    int16_t num_test2 = 0,
    flatbuffers::Offset<TestAppend> test_append = 0) {
  return CreateTexture(_fbb, texture_name ? 0 : _fbb.CreateString(texture_name), num_textures, textures ? 0 : _fbb.CreateVector<flatbuffers::Offset<TextureData>>(*textures), num_test, num_test2, test_append);
}

inline bool VerifyAny(flatbuffers::Verifier &verifier, const void *union_obj, Any type) {
  switch (type) {
    case Any_NONE: return true;
    case Any_TextureData: return verifier.VerifyTable(reinterpret_cast<const TextureData *>(union_obj));
    case Any_Texture: return verifier.VerifyTable(reinterpret_cast<const Texture *>(union_obj));
    default: return false;
  }
}


///powered by zgd
///generate GetRootAs* function for each table/struct
inline const Jason::Flat::Test::TestAppend *GetTestAppend(const void *buf) { return flatbuffers::GetRoot<Jason::Flat::Test::TestAppend>(buf); }

inline TestAppend *GetMutableTestAppend(void *buf) { return flatbuffers::GetMutableRoot<TestAppend>(buf); }

inline const Jason::Flat::Test::TextureData *GetTextureData(const void *buf) { return flatbuffers::GetRoot<Jason::Flat::Test::TextureData>(buf); }

inline TextureData *GetMutableTextureData(void *buf) { return flatbuffers::GetMutableRoot<TextureData>(buf); }

inline const Jason::Flat::Test::Texture *GetTexture(const void *buf) { return flatbuffers::GetRoot<Jason::Flat::Test::Texture>(buf); }

inline Texture *GetMutableTexture(void *buf) { return flatbuffers::GetMutableRoot<Texture>(buf); }

inline bool VerifyTextureBuffer(flatbuffers::Verifier &verifier) { return verifier.VerifyBuffer<Jason::Flat::Test::Texture>(nullptr); }

inline void FinishTextureBuffer(flatbuffers::FlatBufferBuilder &fbb, flatbuffers::Offset<Jason::Flat::Test::Texture> root) { fbb.Finish(root); }

///generate reflect function for all table/struct in factory type
void* ColorFactory(uint32_t protocolId, const void* buf){
	switch(protocolId){
		case 1: return (void*)GetRad(buf);
		case 2: return (void*)GetGreen(buf);
		case 3: return (void*)GetBlue(buf);
	}
	return nullptr;
}

}  // namespace Test
}  // namespace Flat
}  // namespace Jason

#endif  // FLATBUFFERS_GENERATED_MYTEST_JASON_FLAT_TEST_H_
