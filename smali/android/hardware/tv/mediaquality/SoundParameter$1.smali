.class public final Landroid/hardware/tv/mediaquality/SoundParameter$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 2

    new-instance p0, Landroid/hardware/tv/mediaquality/SoundParameter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

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

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_4
    sget-object v1, Landroid/hardware/tv/mediaquality/DtsVirtualX;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/DtsVirtualX;

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_6
    sget-object v1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/DolbyAudioProcessing;

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_d
    sget-object v1, Landroid/hardware/tv/mediaquality/EqualizerDetail;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/tv/mediaquality/EqualizerDetail;

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_e
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_f
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    :pswitch_11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/SoundParameter;->_value:Ljava/lang/Object;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
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

    new-array p0, p1, [Landroid/hardware/tv/mediaquality/SoundParameter;

    return-object p0
.end method
