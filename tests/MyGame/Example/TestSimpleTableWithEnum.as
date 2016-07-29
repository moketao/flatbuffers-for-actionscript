/**
 * 
 * Powered by Zhangguodong 
 * 
 */

// automatically generated by the FlatBuffers compiler, do not modify

package MyGame.Example
{

	import zgd.google.flatbuffers.*;
	import flash.utils.ByteArray;


	public class TestSimpleTableWithEnum extends Table
	{
		/**
		 * @param ByteArray inData
		 * @return TestSimpleTableWithEnum
		 */
		public static function getRootAsTestSimpleTableWithEnum(inData:ByteArray):TestSimpleTableWithEnum
		{
			var bb:ByteBuffer = ByteBuffer.wrap(inData);
			var obj:TestSimpleTableWithEnum = new TestSimpleTableWithEnum();
			obj.init(bb.getInt(bb.getPosition()) + bb.getPosition(), bb);
			return obj;
		}

		public static function TestSimpleTableWithEnumIdentifier():String
		{
			return "MONS";
		}

		public static function TestSimpleTableWithEnumBufferHasIdentifier(buf:ByteBuffer):Boolean
		{
			return __has_identifier(buf, TestSimpleTableWithEnumIdentifier());
		}

		public static function TestSimpleTableWithEnumExtension():String
		{
			return "mon";
		}

		/**
		 * @param int i offset
		 * @param ByteBuffer bb
		 * @return TestSimpleTableWithEnum
		 */
		public function init(i:int, bb:ByteBuffer):TestSimpleTableWithEnum
		{
			this.bb_pos = i;
			this.bb = bb;
			return this;
		}

		/**
		 * @return int
		 */
		public function getColor():int
		{
			var o:int = this.__offset(4);
			return o!=0?this.bb.getByte(o+this.bb_pos):MyGame.Example.Color.Green;
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @return void
		 */
		public static function startTestSimpleTableWithEnum(builder:FlatBufferBuilder):void
		{
			builder.startObject(1);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value)
		 * @return TestSimpleTableWithEnum offset
		 */
		public static function createTestSimpleTableWithEnum(builder:FlatBufferBuilder, 
										color:int):int
		{
			builder.startObject(1);
			addColor(builder, color);
			var o:int = builder.endObject();
			return o;
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addColor(builder:FlatBufferBuilder, color:int):void
		{
			builder.addByteX(0, color, 2);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @return int table offset
		 */
		public static function endTestSimpleTableWithEnum(builder:FlatBufferBuilder):int
		{
			var o:int = builder.endObject();
			return o;
		}

	}


}