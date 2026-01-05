.class public final Landroid/hardware/tv/mediaquality/NumberRange;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/tv/mediaquality/NumberRange;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _tag:I

.field public _value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/hardware/tv/mediaquality/NumberRange$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/hardware/tv/mediaquality/NumberRange;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public static _tagString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const-string/jumbo p0, "doubleValuesSupported"

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown field: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const-string/jumbo p0, "longValuesSupported"

    return-object p0

    :cond_2
    const-string/jumbo p0, "intValuesSupported"

    return-object p0

    :cond_3
    const-string/jumbo p0, "doubleMinMax"

    return-object p0

    :cond_4
    const-string/jumbo p0, "longMinMax"

    return-object p0

    :cond_5
    const-string/jumbo p0, "intMinMax"

    return-object p0
.end method


# virtual methods
.method public final _assertTag(I)V
    .locals 3

    iget v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "bad access: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/hardware/tv/mediaquality/NumberRange;->_tagString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    invoke-static {p0}, Landroid/hardware/tv/mediaquality/NumberRange;->_tagString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is available."

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_tag:I

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    if-eq v0, v1, :cond_3

    const/4 p2, 0x3

    if-eq v0, p2, :cond_2

    const/4 p2, 0x4

    if-eq v0, p2, :cond_1

    const/4 p2, 0x5

    if-eq v0, p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [D

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    return-void

    :cond_1
    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [J

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeLongArray([J)V

    return-void

    :cond_2
    invoke-virtual {p0, p2}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    :cond_3
    invoke-virtual {p0, v1}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [D

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    :cond_4
    invoke-virtual {p0, v2}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [J

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/tv/mediaquality/NumberRange;->_assertTag(I)V

    iget-object p0, p0, Landroid/hardware/tv/mediaquality/NumberRange;->_value:Ljava/lang/Object;

    check-cast p0, [I

    filled-new-array {v1}, [I

    move-result-object v0

    invoke-virtual {p1, p0, p2, v0}, Landroid/os/Parcel;->writeFixedArray(Ljava/lang/Object;I[I)V

    return-void
.end method
