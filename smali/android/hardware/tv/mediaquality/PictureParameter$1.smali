.class public final Landroid/hardware/tv/mediaquality/PictureParameter$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    new-instance p0, Landroid/hardware/tv/mediaquality/PictureParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/16 v1, 0xb

    const-class v2, [I

    packed-switch v0, :pswitch_data_0

    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "union: unknown tag: "

    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_16
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_17
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_18
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_19
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_1a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_1b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_1c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_1d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_1e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_1f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_20
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_21
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_22
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_23
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_24
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_25
    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_26
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_27
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_28
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_29
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_2a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_2b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_2c
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_2d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_2e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_2f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_30
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_31
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_32
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_33
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_34
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_35
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_37
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_38
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_3a
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_3b
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_3c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_3e
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_3f
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_40
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_41
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_42
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_46
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_48
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_49
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_4a
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_4b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_4c
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_4d
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_4e
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_4f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_50
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/PictureParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_50
        :pswitch_4f
        :pswitch_4e
        :pswitch_4d
        :pswitch_4c
        :pswitch_4b
        :pswitch_4a
        :pswitch_49
        :pswitch_48
        :pswitch_47
        :pswitch_46
        :pswitch_45
        :pswitch_44
        :pswitch_43
        :pswitch_42
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_38
        :pswitch_37
        :pswitch_36
        :pswitch_35
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Landroid/hardware/tv/mediaquality/PictureParameter;

    return-object p0
.end method
