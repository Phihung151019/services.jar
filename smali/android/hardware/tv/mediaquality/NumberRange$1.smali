.class public final Landroid/hardware/tv/mediaquality/NumberRange$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 3

    new-instance p0, Landroid/hardware/tv/mediaquality/NumberRange;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Landroid/os/Parcel;->createDoubleArray()[D

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "union: unknown tag: "

    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    return-object p0

    :cond_3
    const-class v2, [D

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    return-object p0

    :cond_4
    const-class v2, [J

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [J

    iput v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    return-object p0

    :cond_5
    const-class v2, [I

    filled-new-array {v1}, [I

    move-result-object v1

    invoke-virtual {p1, v2, v1}, Landroid/os/Parcel;->createFixedArray(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    iput-object p1, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Landroid/hardware/tv/mediaquality/NumberRange;

    return-object p0
.end method
