// automatically generated by the FlatBuffers compiler, do not modify

package Test


///powered by zgd
func GetProtocol(id uint, bytes []byte) interface{}{
	switch id{
	case 1: return GetRootAsRad(bytes, 0)
	case 2: return GetRootAsGreen(bytes, 0)
	case 3: return GetRootAsBlue(bytes, 0)
	default: return nil
	}
	return nil
}
