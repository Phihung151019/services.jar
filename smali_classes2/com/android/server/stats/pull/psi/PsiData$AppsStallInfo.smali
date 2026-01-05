.class public final Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAvg10SecPercentage:F

.field public final mAvg300SecPercentage:F

.field public final mAvg60SecPercentage:F

.field public final mTotalUsec:J


# direct methods
.method public constructor <init>(FFFJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg10SecPercentage:F

    iput p2, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg60SecPercentage:F

    iput p3, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mAvg300SecPercentage:F

    iput-wide p4, p0, Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;->mTotalUsec:J

    return-void
.end method
