.class public final Landroid/hardware/tv/mediaquality/ParameterDefaultValue$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    new-instance p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "union: unknown tag: "

    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    return-object p0

    :cond_3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/ParameterDefaultValue;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Landroid/hardware/tv/mediaquality/ParameterDefaultValue;

    return-object p0
.end method
