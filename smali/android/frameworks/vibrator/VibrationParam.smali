.class public final Landroid/frameworks/vibrator/VibrationParam;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/frameworks/vibrator/VibrationParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _tag:I

.field public _value:Landroid/frameworks/vibrator/ScaleParam;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/frameworks/vibrator/VibrationParam$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/frameworks/vibrator/VibrationParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method


# virtual methods
.method public final describeContents()I
    .locals 1

    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getScale()Landroid/frameworks/vibrator/ScaleParam;
    .locals 2

    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    if-nez v0, :cond_0

    iget-object p0, p0, Landroid/frameworks/vibrator/VibrationParam;->_value:Landroid/frameworks/vibrator/ScaleParam;

    return-object p0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    iget p0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    if-nez p0, :cond_1

    const-string/jumbo p0, "bad access: scale, scale is available."

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "unknown field: "

    invoke-static {p0, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getStability()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/frameworks/vibrator/VibrationParam;->_tag:I

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/frameworks/vibrator/VibrationParam;->getScale()Landroid/frameworks/vibrator/ScaleParam;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    return-void
.end method
