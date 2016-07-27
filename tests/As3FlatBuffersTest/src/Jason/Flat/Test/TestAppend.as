/**
 * 
 * Powered by Zhangguodong 
 * 
 */

// automatically generated by the FlatBuffers compiler, do not modify

package Jason.Flat.Test
{

	import zgd.google.flatbuffers.*;
	import flash.utils.ByteArray;


	///testAppend注释
	public class TestAppend extends Table
	{
		/**
		 * @param ByteArray inData
		 * @return TestAppend
		 */
		public static function getRootAsTestAppend(inData:ByteArray):TestAppend
		{
			var bb:ByteBuffer = ByteBuffer.wrap(inData);
			var obj:TestAppend = new TestAppend();
			obj.init(bb.getInt(bb.getPosition()) + bb.getPosition(), bb);
			return obj;
		}

		/**
		 * @param int i offset
		 * @param ByteBuffer bb
		 * @return TestAppend
		 */
		public function init(i:int, bb:ByteBuffer):TestAppend
		{
			this.bb_pos = i;
			this.bb = bb;
			return this;
		}

		/**
		 * @return int
		 */
		public function getTestNum():int
		{
			var o:int = this.__offset(4);
			return o!=0?this.bb.getInt(o+this.bb_pos):0;
		}

		/**
		 * @return int
		 */
		public function getTestNum2():int
		{
			var o:int = this.__offset(6);
			return o!=0?this.bb.getInt(o+this.bb_pos):0;
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @return void
		 */
		public static function startTestAppend(builder:FlatBufferBuilder):void
		{
			builder.startObject(2);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value)
		 * @return TestAppend offset
		 */
		public static function createTestAppend(builder:FlatBufferBuilder, 
										testNum:int, 
										testNum2:int):int
		{
			builder.startObject(2);
			addTestNum(builder, testNum);
			addTestNum2(builder, testNum2);
			var o:int = builder.endObject();
			return o;
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addTestNum(builder:FlatBufferBuilder, testNum:int):void
		{
			builder.addIntX(0, testNum, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addTestNum2(builder:FlatBufferBuilder, testNum2:int):void
		{
			builder.addIntX(1, testNum2, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @return int table offset
		 */
		public static function endTestAppend(builder:FlatBufferBuilder):int
		{
			var o:int = builder.endObject();
			return o;
		}

	}


}