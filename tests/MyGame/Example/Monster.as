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


	/// an example documentation comment: monster object
	public class Monster extends Table
	{
		/**
		 * @param ByteArray inData
		 * @return Monster
		 */
		public static function getRootAsMonster(inData:ByteArray):Monster
		{
			var bb:ByteBuffer = ByteBuffer.wrap(inData);
			var obj:Monster = new Monster();
			obj.init(bb.getInt(bb.getPosition()) + bb.getPosition(), bb);
			return obj;
		}

		public static function MonsterIdentifier():String
		{
			return "MONS";
		}

		public static function MonsterBufferHasIdentifier(buf:ByteBuffer):Boolean
		{
			return __has_identifier(buf, MonsterIdentifier());
		}

		public static function MonsterExtension():String
		{
			return "mon";
		}

		/**
		 * @param int i offset
		 * @param ByteBuffer bb
		 * @return Monster
		 */
		public function init(i:int, bb:ByteBuffer):Monster
		{
			this.bb_pos = i;
			this.bb = bb;
			return this;
		}

		/**
		 * @return Vec3
		 */
		public function getPos():Vec3
		{
			var obj:Vec3 = new Vec3();
			var o:int = this.__offset(4);
			o!=0?obj.init(o + this.bb_pos, this.bb) : 0;
			return obj;
		}

		/**
		 * @return int
		 */
		public function getMana():int
		{
			var o:int = this.__offset(6);
			return o!=0?this.bb.getShort(o+this.bb_pos):150;
		}

		/**
		 * @return int
		 */
		public function getHp():int
		{
			var o:int = this.__offset(8);
			return o!=0?this.bb.getShort(o+this.bb_pos):100;
		}

		/**
		 * @return String
		 */
		public function getName():String
		{
			var o:int = this.__offset(10);
			return o != 0?this.__string(o + this.bb_pos):null;
		}

		/**
		 * @param int offset
		 * @return int
		 */
		public function getInventory(j:int):*
		{
			var o:int = this.__offset(14);
			return o!=0?this.bb.getByte(this.__vector(o) + j * 1):0;
		}

		/**
		 * @return int
		 */
		public function getInventoryLength():int
		{
			var o:int = this.__offset(14);
			return o!=0?this.__vector_len(o):0;
		}

		/**
		 * @return ByteArray
		 */
		public function getInventoryBytes():ByteArray
		{
			return this.__vector_as_bytes(14);
		}

		/**
		 * @return int
		 */
		public function getColor():int
		{
			var o:int = this.__offset(16);
			return o!=0?this.bb.getSbyte(o+this.bb_pos):MyGame.Example.Color.Blue;
		}

		/**
		 * @return int
		 */
		public function getTestType():int
		{
			var o:int = this.__offset(18);
			return o!=0?this.bb.getByte(o+this.bb_pos):MyGame.Example.Any.NONE;
		}

		/**
		 * @return int
		 */
		public function getTest(obj:Table):Test
		{
			var o:int = this.__offset(20);
			return o!=0?this.__union(obj, o):null;
		}

		/**
		 * @return *
		 */
		public function getTest4(j:int):*
		{
			var o:int = this.__offset(22);
			var obj:Test = new Test();
			return o!=0?obj.init(this.__vector(o) + j * 4, this.bb):null;
		}

		/**
		 * @return int
		 */
		public function getTest4Length():int
		{
			var o:int = this.__offset(22);
			return o!=0?this.__vector_len(o):0;
		}

		/**
		 * @param int offset
		 * @return string
		 */
		public function getTestarrayofstring(j:int):*
		{
			var o:int = this.__offset(24);
			return o!=0?this.__string(this.__vector(o) + j * 4 ):0;
		}

		/**
		 * @return int
		 */
		public function getTestarrayofstringLength():int
		{
			var o:int = this.__offset(24);
			return o!=0?this.__vector_len(o):0;
		}

	/// an example documentation comment: this will end up in the generated code
	/// multiline too
		/**
		 * @return *
		 */
		public function getTestarrayoftables(j:int):*
		{
			var o:int = this.__offset(26);
			var obj:Monster = new Monster();
			return o!=0?obj.init(this.__indirect(this.__vector(o) + j * 4), this.bb):null;
		}

		/**
		 * @return int
		 */
		public function getTestarrayoftablesLength():int
		{
			var o:int = this.__offset(26);
			return o!=0?this.__vector_len(o):0;
		}

		/**
		 * @return Monster
		 */
		public function getEnemy():Monster
		{
			var obj:Monster = new Monster();
			var o:int = this.__offset(28);
			o!=0?obj.init(this.__indirect(o + this.bb_pos), this.bb) : 0;
			return obj;
		}

		/**
		 * @param int offset
		 * @return int
		 */
		public function getTestnestedflatbuffer(j:int):*
		{
			var o:int = this.__offset(30);
			return o!=0?this.bb.getByte(this.__vector(o) + j * 1):0;
		}

		/**
		 * @return int
		 */
		public function getTestnestedflatbufferLength():int
		{
			var o:int = this.__offset(30);
			return o!=0?this.__vector_len(o):0;
		}

		/**
		 * @return ByteArray
		 */
		public function getTestnestedflatbufferBytes():ByteArray
		{
			return this.__vector_as_bytes(30);
		}

		/**
		 * @return Stat
		 */
		public function getTestempty():Stat
		{
			var obj:Stat = new Stat();
			var o:int = this.__offset(32);
			o!=0?obj.init(this.__indirect(o + this.bb_pos), this.bb) : 0;
			return obj;
		}

		/**
		 * @return Boolean
		 */
		public function getTestbool():Boolean
		{
			var o:int = this.__offset(34);
			return o!=0?this.bb.getBool(o+this.bb_pos):false;
		}

		/**
		 * @return int
		 */
		public function getTesthashs32Fnv1():int
		{
			var o:int = this.__offset(36);
			return o!=0?this.bb.getInt(o+this.bb_pos):0;
		}

		/**
		 * @return uint
		 */
		public function getTesthashu32Fnv1():uint
		{
			var o:int = this.__offset(38);
			return o!=0?this.bb.getUint(o+this.bb_pos):0;
		}

		/**
		 * @return Number
		 */
		public function getTesthashs64Fnv1():Number
		{
			var o:int = this.__offset(40);
			return o!=0?this.bb.getLong(o+this.bb_pos):0;
		}

		/**
		 * @return Number
		 */
		public function getTesthashu64Fnv1():Number
		{
			var o:int = this.__offset(42);
			return o!=0?this.bb.getUlong(o+this.bb_pos):0;
		}

		/**
		 * @return int
		 */
		public function getTesthashs32Fnv1a():int
		{
			var o:int = this.__offset(44);
			return o!=0?this.bb.getInt(o+this.bb_pos):0;
		}

		/**
		 * @return uint
		 */
		public function getTesthashu32Fnv1a():uint
		{
			var o:int = this.__offset(46);
			return o!=0?this.bb.getUint(o+this.bb_pos):0;
		}

		/**
		 * @return Number
		 */
		public function getTesthashs64Fnv1a():Number
		{
			var o:int = this.__offset(48);
			return o!=0?this.bb.getLong(o+this.bb_pos):0;
		}

		/**
		 * @return Number
		 */
		public function getTesthashu64Fnv1a():Number
		{
			var o:int = this.__offset(50);
			return o!=0?this.bb.getUlong(o+this.bb_pos):0;
		}

		/**
		 * @param int offset
		 * @return Boolean
		 */
		public function getTestarrayofbools(j:int):*
		{
			var o:int = this.__offset(52);
			return o!=0?this.bb.getBool(this.__vector(o) + j * 1):0;
		}

		/**
		 * @return int
		 */
		public function getTestarrayofboolsLength():int
		{
			var o:int = this.__offset(52);
			return o!=0?this.__vector_len(o):0;
		}

		/**
		 * @return Number
		 */
		public function getTestf():Number
		{
			var o:int = this.__offset(54);
			return o!=0?this.bb.getFloat(o+this.bb_pos):3.14159;
		}

		/**
		 * @return Number
		 */
		public function getTestf2():Number
		{
			var o:int = this.__offset(56);
			return o!=0?this.bb.getFloat(o+this.bb_pos):3.0;
		}

		/**
		 * @return Number
		 */
		public function getTestf3():Number
		{
			var o:int = this.__offset(58);
			return o!=0?this.bb.getFloat(o+this.bb_pos):0.0;
		}

		/**
		 * @param int offset
		 * @return string
		 */
		public function getTestarrayofstring2(j:int):*
		{
			var o:int = this.__offset(60);
			return o!=0?this.__string(this.__vector(o) + j * 4 ):0;
		}

		/**
		 * @return int
		 */
		public function getTestarrayofstring2Length():int
		{
			var o:int = this.__offset(60);
			return o!=0?this.__vector_len(o):0;
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @return void
		 */
		public static function startMonster(builder:FlatBufferBuilder):void
		{
			builder.startObject(29);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value)
		 * @return Monster offset
		 */
		public static function createMonster(builder:FlatBufferBuilder, 
										posOffset:*, 
										mana:int, 
										hp:int, 
										nameOffset:*, 
										inventoryOffset:*, 
										color:int, 
										testType:int, 
										testOffset:*, 
										test4Offset:*, 
										testarrayofstringOffset:*, 
										testarrayoftablesOffset:*, 
										enemyOffset:*, 
										testnestedflatbufferOffset:*, 
										testemptyOffset:*, 
										testbool:Boolean, 
										testhashs32Fnv1:int, 
										testhashu32Fnv1:uint, 
										testhashs64Fnv1:Number, 
										testhashu64Fnv1:Number, 
										testhashs32Fnv1a:int, 
										testhashu32Fnv1a:uint, 
										testhashs64Fnv1a:Number, 
										testhashu64Fnv1a:Number, 
										testarrayofboolsOffset:*, 
										testf:Number, 
										testf2:Number, 
										testf3:Number, 
										testarrayofstring2Offset:*):int
		{
			builder.startObject(29);
			addPos(builder, posOffset);
			addMana(builder, mana);
			addHp(builder, hp);
			addName(builder, nameOffset);
			addInventory(builder, inventoryOffset);
			addColor(builder, color);
			addTestType(builder, testType);
			addTest(builder, testOffset);
			addTest4(builder, test4Offset);
			addTestarrayofstring(builder, testarrayofstringOffset);
			addTestarrayoftables(builder, testarrayoftablesOffset);
			addEnemy(builder, enemyOffset);
			addTestnestedflatbuffer(builder, testnestedflatbufferOffset);
			addTestempty(builder, testemptyOffset);
			addTestbool(builder, testbool);
			addTesthashs32Fnv1(builder, testhashs32Fnv1);
			addTesthashu32Fnv1(builder, testhashu32Fnv1);
			addTesthashs64Fnv1(builder, testhashs64Fnv1);
			addTesthashu64Fnv1(builder, testhashu64Fnv1);
			addTesthashs32Fnv1a(builder, testhashs32Fnv1a);
			addTesthashu32Fnv1a(builder, testhashu32Fnv1a);
			addTesthashs64Fnv1a(builder, testhashs64Fnv1a);
			addTesthashu64Fnv1a(builder, testhashu64Fnv1a);
			addTestarrayofbools(builder, testarrayofboolsOffset);
			addTestf(builder, testf);
			addTestf2(builder, testf2);
			addTestf3(builder, testf3);
			addTestarrayofstring2(builder, testarrayofstring2Offset);
			var o:int = builder.endObject();
			builder.required(o, 10);	//name
			return o;
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addPos(builder:FlatBufferBuilder, posOffset:int):void
		{
			builder.addStructX(0, posOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addMana(builder:FlatBufferBuilder, mana:int):void
		{
			builder.addShortX(1, mana, 150);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addHp(builder:FlatBufferBuilder, hp:int):void
		{
			builder.addShortX(2, hp, 100);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) *
		 * @return void
		 */
		public static function addName(builder:FlatBufferBuilder, nameOffset:*):void
		{
			builder.addOffsetX(3, nameOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) *
		 * @return void
		 */
		public static function addInventory(builder:FlatBufferBuilder, inventoryOffset:*):void
		{
			builder.addOffsetX(5, inventoryOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param array ofsset array
		 * @return int vector offset
		 */
		public static function createInventoryVector(builder:FlatBufferBuilder, data:Array):int
		{
			builder.startVector(1, data.length, 1);
			for(var i:int=data.length-1; i>=0; i--){
				builder.addByte(data[i]);
			}
			return builder.endVector();
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param int numElems
		 * @return void
		 */
		public static function startInventoryVector(builder:FlatBufferBuilder, numElems:int):void
		{
			builder.startVector(1, numElems, 1);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addColor(builder:FlatBufferBuilder, color:int):void
		{
			builder.addSbyteX(6, color, 8);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addTestType(builder:FlatBufferBuilder, testType:int):void
		{
			builder.addByteX(7, testType, 0);
		}

		public static function addTest(builder:FlatBufferBuilder, offset:int):void
		{
			builder.addOffsetX(8, offset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) *
		 * @return void
		 */
		public static function addTest4(builder:FlatBufferBuilder, test4Offset:*):void
		{
			builder.addOffsetX(9, test4Offset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param array ofsset array
		 * @return int vector offset
		 */
		public static function createTest4Vector(builder:FlatBufferBuilder, data:Array):int
		{
			builder.startVector(4, data.length, 2);
			for(var i:int=data.length-1; i>=0; i--){
				builder.addOffset(data[i]);
			}
			return builder.endVector();
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param int numElems
		 * @return void
		 */
		public static function startTest4Vector(builder:FlatBufferBuilder, numElems:int):void
		{
			builder.startVector(4, numElems, 2);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) *
		 * @return void
		 */
		public static function addTestarrayofstring(builder:FlatBufferBuilder, testarrayofstringOffset:*):void
		{
			builder.addOffsetX(10, testarrayofstringOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param array ofsset array
		 * @return int vector offset
		 */
		public static function createTestarrayofstringVector(builder:FlatBufferBuilder, data:Array):int
		{
			builder.startVector(4, data.length, 4);
			for(var i:int=data.length-1; i>=0; i--){
				builder.addOffset(data[i]);
			}
			return builder.endVector();
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param int numElems
		 * @return void
		 */
		public static function startTestarrayofstringVector(builder:FlatBufferBuilder, numElems:int):void
		{
			builder.startVector(4, numElems, 4);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) *
		 * @return void
		 */
		public static function addTestarrayoftables(builder:FlatBufferBuilder, testarrayoftablesOffset:*):void
		{
			builder.addOffsetX(11, testarrayoftablesOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param array ofsset array
		 * @return int vector offset
		 */
		public static function createTestarrayoftablesVector(builder:FlatBufferBuilder, data:Array):int
		{
			builder.startVector(4, data.length, 4);
			for(var i:int=data.length-1; i>=0; i--){
				builder.addOffset(data[i]);
			}
			return builder.endVector();
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param int numElems
		 * @return void
		 */
		public static function startTestarrayoftablesVector(builder:FlatBufferBuilder, numElems:int):void
		{
			builder.startVector(4, numElems, 4);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addEnemy(builder:FlatBufferBuilder, enemyOffset:int):void
		{
			builder.addOffsetX(12, enemyOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) *
		 * @return void
		 */
		public static function addTestnestedflatbuffer(builder:FlatBufferBuilder, testnestedflatbufferOffset:*):void
		{
			builder.addOffsetX(13, testnestedflatbufferOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param array ofsset array
		 * @return int vector offset
		 */
		public static function createTestnestedflatbufferVector(builder:FlatBufferBuilder, data:Array):int
		{
			builder.startVector(1, data.length, 1);
			for(var i:int=data.length-1; i>=0; i--){
				builder.addByte(data[i]);
			}
			return builder.endVector();
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param int numElems
		 * @return void
		 */
		public static function startTestnestedflatbufferVector(builder:FlatBufferBuilder, numElems:int):void
		{
			builder.startVector(1, numElems, 1);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addTestempty(builder:FlatBufferBuilder, testemptyOffset:int):void
		{
			builder.addOffsetX(14, testemptyOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) Boolean
		 * @return void
		 */
		public static function addTestbool(builder:FlatBufferBuilder, testbool:Boolean):void
		{
			builder.addBoolX(15, testbool, false);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addTesthashs32Fnv1(builder:FlatBufferBuilder, testhashs32Fnv1:int):void
		{
			builder.addIntX(16, testhashs32Fnv1, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) uint
		 * @return void
		 */
		public static function addTesthashu32Fnv1(builder:FlatBufferBuilder, testhashu32Fnv1:uint):void
		{
			builder.addUintX(17, testhashu32Fnv1, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) Number
		 * @return void
		 */
		public static function addTesthashs64Fnv1(builder:FlatBufferBuilder, testhashs64Fnv1:Number):void
		{
			builder.addLongX(18, testhashs64Fnv1, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) Number
		 * @return void
		 */
		public static function addTesthashu64Fnv1(builder:FlatBufferBuilder, testhashu64Fnv1:Number):void
		{
			builder.addUlongX(19, testhashu64Fnv1, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) int
		 * @return void
		 */
		public static function addTesthashs32Fnv1a(builder:FlatBufferBuilder, testhashs32Fnv1a:int):void
		{
			builder.addIntX(20, testhashs32Fnv1a, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) uint
		 * @return void
		 */
		public static function addTesthashu32Fnv1a(builder:FlatBufferBuilder, testhashu32Fnv1a:uint):void
		{
			builder.addUintX(21, testhashu32Fnv1a, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) Number
		 * @return void
		 */
		public static function addTesthashs64Fnv1a(builder:FlatBufferBuilder, testhashs64Fnv1a:Number):void
		{
			builder.addLongX(22, testhashs64Fnv1a, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) Number
		 * @return void
		 */
		public static function addTesthashu64Fnv1a(builder:FlatBufferBuilder, testhashu64Fnv1a:Number):void
		{
			builder.addUlongX(23, testhashu64Fnv1a, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) *
		 * @return void
		 */
		public static function addTestarrayofbools(builder:FlatBufferBuilder, testarrayofboolsOffset:*):void
		{
			builder.addOffsetX(24, testarrayofboolsOffset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param array ofsset array
		 * @return int vector offset
		 */
		public static function createTestarrayofboolsVector(builder:FlatBufferBuilder, data:Array):int
		{
			builder.startVector(1, data.length, 1);
			for(var i:int=data.length-1; i>=0; i--){
				builder.addBool(data[i]);
			}
			return builder.endVector();
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param int numElems
		 * @return void
		 */
		public static function startTestarrayofboolsVector(builder:FlatBufferBuilder, numElems:int):void
		{
			builder.startVector(1, numElems, 1);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) Number
		 * @return void
		 */
		public static function addTestf(builder:FlatBufferBuilder, testf:Number):void
		{
			builder.addFloatX(25, testf, 3.14159);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) Number
		 * @return void
		 */
		public static function addTestf2(builder:FlatBufferBuilder, testf2:Number):void
		{
			builder.addFloatX(26, testf2, 3.0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) Number
		 * @return void
		 */
		public static function addTestf3(builder:FlatBufferBuilder, testf3:Number):void
		{
			builder.addFloatX(27, testf3, 0.0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param (if type is * means int offset value) *
		 * @return void
		 */
		public static function addTestarrayofstring2(builder:FlatBufferBuilder, testarrayofstring2Offset:*):void
		{
			builder.addOffsetX(28, testarrayofstring2Offset, 0);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param array ofsset array
		 * @return int vector offset
		 */
		public static function createTestarrayofstring2Vector(builder:FlatBufferBuilder, data:Array):int
		{
			builder.startVector(4, data.length, 4);
			for(var i:int=data.length-1; i>=0; i--){
				builder.addOffset(data[i]);
			}
			return builder.endVector();
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @param int numElems
		 * @return void
		 */
		public static function startTestarrayofstring2Vector(builder:FlatBufferBuilder, numElems:int):void
		{
			builder.startVector(4, numElems, 4);
		}

		/**
		 * @param FlatBufferBuilder builder
		 * @return int table offset
		 */
		public static function endMonster(builder:FlatBufferBuilder):int
		{
			var o:int = builder.endObject();
			builder.required(o, 10);	//name
			return o;
		}


		public static function finishMonsterBuffer(builder:FlatBufferBuilder, offset:int):void
		{
			builder.finish(offset, "MONS");
		}

	}


}