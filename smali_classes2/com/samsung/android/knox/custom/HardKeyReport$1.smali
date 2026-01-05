.class public Lcom/samsung/android/knox/custom/HardKeyReport$1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/custom/HardKeyReport;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/custom/HardKeyReport;
    .locals 0

    new-instance p0, Lcom/samsung/android/knox/custom/HardKeyReport;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/HardKeyReport;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    new-instance p0, Lcom/samsung/android/knox/custom/HardKeyReport;

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/custom/HardKeyReport;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public final newArray(I)[Lcom/samsung/android/knox/custom/HardKeyReport;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/knox/custom/HardKeyReport;

    return-object p0
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/knox/custom/HardKeyReport;

    return-object p0
.end method
