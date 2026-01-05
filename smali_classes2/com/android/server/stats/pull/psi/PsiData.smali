.class public final Lcom/android/server/stats/pull/psi/PsiData;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

.field public final mResourceType:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

.field public final mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/psi/PsiData$ResourceType;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/stats/pull/psi/PsiData;->mResourceType:Lcom/android/server/stats/pull/psi/PsiData$ResourceType;

    iput-object p2, p0, Lcom/android/server/stats/pull/psi/PsiData;->mSomeAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    iput-object p3, p0, Lcom/android/server/stats/pull/psi/PsiData;->mFullAppsStallInfo:Lcom/android/server/stats/pull/psi/PsiData$AppsStallInfo;

    return-void
.end method
