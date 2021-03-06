// automatically generated by the FlatBuffers compiler, do not modify

/**
 * @const
*/
var Jason = Jason || {};

/**
 * @const
*/
Jason.Flat = Jason.Flat || {};

/**
 * @const
*/
Jason.Flat.Test = Jason.Flat.Test || {};

/**
 * @enum
 */
Jason.Flat.Test.Color = {
  Rad: 1,
  Green: 2,
  Blue: 3
};

/**
 * @enum
 */
Jason.Flat.Test.Any = {
  NONE: 0,
  TextureData: 1,
  Texture: 2
};

/**
 *testAppend注释
 *
 * @constructor
 */
Jason.Flat.Test.TestAppend = function() {
  /**
   * @type {flatbuffers.ByteBuffer}
   */
  this.bb = null;

  /**
   * @type {number}
   */
  this.bb_pos = 0;
};

/**
 * @param {number} i
 * @param {flatbuffers.ByteBuffer} bb
 * @returns {Jason.Flat.Test.TestAppend}
 */
Jason.Flat.Test.TestAppend.prototype.__init = function(i, bb) {
  this.bb_pos = i;
  this.bb = bb;
  return this;
};

/**
 * @param {flatbuffers.ByteBuffer} bb
 * @param {Jason.Flat.Test.TestAppend=} obj
 * @returns {Jason.Flat.Test.TestAppend}
 */
Jason.Flat.Test.TestAppend.getRootAsTestAppend = function(bb, obj) {
  return (obj || new Jason.Flat.Test.TestAppend).__init(bb.readInt32(bb.position()) + bb.position(), bb);
};

/**
 * @returns {number}
 */
Jason.Flat.Test.TestAppend.prototype.testNum = function() {
  var offset = this.bb.__offset(this.bb_pos, 4);
  return offset ? this.bb.readInt32(this.bb_pos + offset) : 0;
};

/**
 * @returns {number}
 */
Jason.Flat.Test.TestAppend.prototype.testNum2 = function() {
  var offset = this.bb.__offset(this.bb_pos, 6);
  return offset ? this.bb.readInt32(this.bb_pos + offset) : 0;
};

/**
 * @param {flatbuffers.Builder} builder
 */
Jason.Flat.Test.TestAppend.startTestAppend = function(builder) {
  builder.startObject(2);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} testNum
 */
Jason.Flat.Test.TestAppend.addTestNum = function(builder, testNum) {
  builder.addFieldInt32(0, testNum, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} testNum2
 */
Jason.Flat.Test.TestAppend.addTestNum2 = function(builder, testNum2) {
  builder.addFieldInt32(1, testNum2, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @returns {flatbuffers.Offset}
 */
Jason.Flat.Test.TestAppend.endTestAppend = function(builder) {
  var offset = builder.endObject();
  return offset;
};

/**
 *文理数据结构
 *
 * @constructor
 */
Jason.Flat.Test.TextureData = function() {
  /**
   * @type {flatbuffers.ByteBuffer}
   */
  this.bb = null;

  /**
   * @type {number}
   */
  this.bb_pos = 0;
};

/**
 * @param {number} i
 * @param {flatbuffers.ByteBuffer} bb
 * @returns {Jason.Flat.Test.TextureData}
 */
Jason.Flat.Test.TextureData.prototype.__init = function(i, bb) {
  this.bb_pos = i;
  this.bb = bb;
  return this;
};

/**
 * @param {flatbuffers.ByteBuffer} bb
 * @param {Jason.Flat.Test.TextureData=} obj
 * @returns {Jason.Flat.Test.TextureData}
 */
Jason.Flat.Test.TextureData.getRootAsTextureData = function(bb, obj) {
  return (obj || new Jason.Flat.Test.TextureData).__init(bb.readInt32(bb.position()) + bb.position(), bb);
};

/**
 * @returns {number}
 */
Jason.Flat.Test.TextureData.prototype.imageSize = function() {
  var offset = this.bb.__offset(this.bb_pos, 4);
  return offset ? this.bb.readInt32(this.bb_pos + offset) : 0;
};

/**
 * @param {number} index
 * @returns {number}
 */
Jason.Flat.Test.TextureData.prototype.imageData = function(index) {
  var offset = this.bb.__offset(this.bb_pos, 6);
  return offset ? this.bb.readUint8(this.bb.__vector(this.bb_pos + offset) + index) : 0;
};

/**
 * @returns {number}
 */
Jason.Flat.Test.TextureData.prototype.imageDataLength = function() {
  var offset = this.bb.__offset(this.bb_pos, 6);
  return offset ? this.bb.__vector_len(this.bb_pos + offset) : 0;
};

/**
 * @returns {Uint8Array}
 */
Jason.Flat.Test.TextureData.prototype.imageDataArray = function() {
  var offset = this.bb.__offset(this.bb_pos, 6);
  return offset ? new Uint8Array(this.bb.bytes().buffer, this.bb.__vector(this.bb_pos + offset), this.bb.__vector_len(this.bb_pos + offset)) : null;
};

/**
 * @returns {number}
 */
Jason.Flat.Test.TextureData.prototype.testNum2 = function() {
  var offset = this.bb.__offset(this.bb_pos, 8);
  return offset ? this.bb.readInt32(this.bb_pos + offset) : 0;
};

/**
 * @returns {number}
 */
Jason.Flat.Test.TextureData.prototype.imageTest = function() {
  var offset = this.bb.__offset(this.bb_pos, 10);
  return offset ? this.bb.readInt16(this.bb_pos + offset) : 0;
};

/**
 * @param {flatbuffers.Builder} builder
 */
Jason.Flat.Test.TextureData.startTextureData = function(builder) {
  builder.startObject(4);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} imageSize
 */
Jason.Flat.Test.TextureData.addImageSize = function(builder, imageSize) {
  builder.addFieldInt32(0, imageSize, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {flatbuffers.Offset} imageDataOffset
 */
Jason.Flat.Test.TextureData.addImageData = function(builder, imageDataOffset) {
  builder.addFieldOffset(1, imageDataOffset, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {Array.<number>} data
 * @returns {flatbuffers.Offset}
 */
Jason.Flat.Test.TextureData.createImageDataVector = function(builder, data) {
  builder.startVector(1, data.length, 1);
  for (var i = data.length - 1; i >= 0; i--) {
    builder.addInt8(data[i]);
  }
  return builder.endVector();
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} numElems
 */
Jason.Flat.Test.TextureData.startImageDataVector = function(builder, numElems) {
  builder.startVector(1, numElems, 1);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} testNum2
 */
Jason.Flat.Test.TextureData.addTestNum2 = function(builder, testNum2) {
  builder.addFieldInt32(2, testNum2, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} imageTest
 */
Jason.Flat.Test.TextureData.addImageTest = function(builder, imageTest) {
  builder.addFieldInt16(3, imageTest, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @returns {flatbuffers.Offset}
 */
Jason.Flat.Test.TextureData.endTextureData = function(builder) {
  var offset = builder.endObject();
  return offset;
};

/**
 *文理结构
 *
 * @constructor
 */
Jason.Flat.Test.Texture = function() {
  /**
   * @type {flatbuffers.ByteBuffer}
   */
  this.bb = null;

  /**
   * @type {number}
   */
  this.bb_pos = 0;
};

/**
 * @param {number} i
 * @param {flatbuffers.ByteBuffer} bb
 * @returns {Jason.Flat.Test.Texture}
 */
Jason.Flat.Test.Texture.prototype.__init = function(i, bb) {
  this.bb_pos = i;
  this.bb = bb;
  return this;
};

/**
 * @param {flatbuffers.ByteBuffer} bb
 * @param {Jason.Flat.Test.Texture=} obj
 * @returns {Jason.Flat.Test.Texture}
 */
Jason.Flat.Test.Texture.getRootAsTexture = function(bb, obj) {
  return (obj || new Jason.Flat.Test.Texture).__init(bb.readInt32(bb.position()) + bb.position(), bb);
};

/**
 * @param {flatbuffers.Encoding=} optionalEncoding
 * @returns {string|Uint8Array}
 */
Jason.Flat.Test.Texture.prototype.textureName = function(optionalEncoding) {
  var offset = this.bb.__offset(this.bb_pos, 4);
  return offset ? this.bb.__string(this.bb_pos + offset, optionalEncoding) : null;
};

/**
 * @returns {number}
 */
Jason.Flat.Test.Texture.prototype.numTextures = function() {
  var offset = this.bb.__offset(this.bb_pos, 6);
  return offset ? this.bb.readInt16(this.bb_pos + offset) : 0;
};

/**
 * @param {number} index
 * @param {Jason.Flat.Test.TextureData=} obj
 * @returns {Jason.Flat.Test.TextureData}
 */
Jason.Flat.Test.Texture.prototype.textures = function(index, obj) {
  var offset = this.bb.__offset(this.bb_pos, 8);
  return offset ? (obj || new Jason.Flat.Test.TextureData).__init(this.bb.__indirect(this.bb.__vector(this.bb_pos + offset) + index * 4), this.bb) : null;
};

/**
 * @returns {number}
 */
Jason.Flat.Test.Texture.prototype.texturesLength = function() {
  var offset = this.bb.__offset(this.bb_pos, 8);
  return offset ? this.bb.__vector_len(this.bb_pos + offset) : 0;
};

/**
 * @returns {number}
 */
Jason.Flat.Test.Texture.prototype.numTest = function() {
  var offset = this.bb.__offset(this.bb_pos, 10);
  return offset ? this.bb.readInt16(this.bb_pos + offset) : 30;
};

/**
 * @returns {number}
 */
Jason.Flat.Test.Texture.prototype.numTest2 = function() {
  var offset = this.bb.__offset(this.bb_pos, 14);
  return offset ? this.bb.readInt16(this.bb_pos + offset) : 0;
};

/**
 * @param {Jason.Flat.Test.TestAppend=} obj
 * @returns {Jason.Flat.Test.TestAppend}
 */
Jason.Flat.Test.Texture.prototype.testAppend = function(obj) {
  var offset = this.bb.__offset(this.bb_pos, 16);
  return offset ? (obj || new Jason.Flat.Test.TestAppend).__init(this.bb.__indirect(this.bb_pos + offset), this.bb) : null;
};

/**
 * @param {flatbuffers.Builder} builder
 */
Jason.Flat.Test.Texture.startTexture = function(builder) {
  builder.startObject(7);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {flatbuffers.Offset} textureNameOffset
 */
Jason.Flat.Test.Texture.addTextureName = function(builder, textureNameOffset) {
  builder.addFieldOffset(0, textureNameOffset, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} numTextures
 */
Jason.Flat.Test.Texture.addNumTextures = function(builder, numTextures) {
  builder.addFieldInt16(1, numTextures, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {flatbuffers.Offset} texturesOffset
 */
Jason.Flat.Test.Texture.addTextures = function(builder, texturesOffset) {
  builder.addFieldOffset(2, texturesOffset, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {Array.<flatbuffers.Offset>} data
 * @returns {flatbuffers.Offset}
 */
Jason.Flat.Test.Texture.createTexturesVector = function(builder, data) {
  builder.startVector(4, data.length, 4);
  for (var i = data.length - 1; i >= 0; i--) {
    builder.addOffset(data[i]);
  }
  return builder.endVector();
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} numElems
 */
Jason.Flat.Test.Texture.startTexturesVector = function(builder, numElems) {
  builder.startVector(4, numElems, 4);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} numTest
 */
Jason.Flat.Test.Texture.addNumTest = function(builder, numTest) {
  builder.addFieldInt16(3, numTest, 30);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {number} numTest2
 */
Jason.Flat.Test.Texture.addNumTest2 = function(builder, numTest2) {
  builder.addFieldInt16(5, numTest2, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {flatbuffers.Offset} testAppendOffset
 */
Jason.Flat.Test.Texture.addTestAppend = function(builder, testAppendOffset) {
  builder.addFieldOffset(6, testAppendOffset, 0);
};

/**
 * @param {flatbuffers.Builder} builder
 * @returns {flatbuffers.Offset}
 */
Jason.Flat.Test.Texture.endTexture = function(builder) {
  var offset = builder.endObject();
  return offset;
};

/**
 * @param {flatbuffers.Builder} builder
 * @param {flatbuffers.Offset} offset
 */
Jason.Flat.Test.Texture.finishTextureBuffer = function(builder, offset) {
  builder.finish(offset);
};

// Exports for Node.js and RequireJS
this.Jason = Jason;
