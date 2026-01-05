.class public final Lcom/android/server/DssController$DssAppDate;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mCpuLevel:I

.field public mGameSiopLevel:I

.field public mGpuLevel:I

.field public mScale:F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mScale:F

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mGameSiopLevel:I

    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mCpuLevel:I

    iput v0, p0, Lcom/android/server/DssController$DssAppDate;->mGpuLevel:I

    return-void
.end method
