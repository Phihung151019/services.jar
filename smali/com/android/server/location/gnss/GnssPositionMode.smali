.class public final Lcom/android/server/location/gnss/GnssPositionMode;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mLowPowerMode:Z

.field public final mMinInterval:I

.field public final mMode:I


# direct methods
.method public constructor <init>(IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    iput p2, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    iput-boolean p3, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/location/gnss/GnssPositionMode;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/android/server/location/gnss/GnssPositionMode;

    iget v0, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    iget v1, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    if-ne v1, v0, :cond_0

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    iget v1, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    if-ne v0, v1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    iget-boolean p1, p1, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 8

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mMinInterval:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean p0, p0, Lcom/android/server/location/gnss/GnssPositionMode;->mLowPowerMode:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    const-class v7, Lcom/android/server/location/gnss/GnssPositionMode;

    move-object v4, v2

    move-object v5, v2

    filled-new-array/range {v1 .. v7}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method
