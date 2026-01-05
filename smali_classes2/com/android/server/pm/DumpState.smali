.class public final Lcom/android/server/pm/DumpState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mBrief:Z

.field public mCheckIn:Z

.field public mFullPreferred:Z

.field public mOptions:I

.field public mSharedUser:Lcom/android/server/pm/SharedUserSetting;

.field public mTargetPackageName:Ljava/lang/String;

.field public mTitlePrinted:Z

.field public mTypes:I


# virtual methods
.method public final isDumping(I)Z
    .locals 2

    iget p0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    const/4 v0, 0x1

    if-nez p0, :cond_0

    const/16 v1, 0x2000

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    and-int/2addr p0, p1

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isOptionEnabled(I)Z
    .locals 0

    iget p0, p0, Lcom/android/server/pm/DumpState;->mOptions:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final setDump(I)V
    .locals 1

    iget v0, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/server/pm/DumpState;->mTypes:I

    return-void
.end method
