.class public final Lcom/android/server/compat/PlatformCompatNative;
.super Lcom/android/internal/compat/IPlatformCompatNative$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mPlatformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/compat/IPlatformCompatNative$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    return-void
.end method


# virtual methods
.method public final isChangeEnabledByPackageName(JLjava/lang/String;I)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByPackageName(JLjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isChangeEnabledByUid(JI)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabledByUid(JI)Z

    move-result p0

    return p0
.end method

.method public final reportChangeByPackageName(JLjava/lang/String;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/compat/PlatformCompat;->reportChangeByPackageName(JLjava/lang/String;I)V

    return-void
.end method

.method public final reportChangeByUid(JI)V
    .locals 0

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompatNative;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->reportChangeByUid(JI)V

    return-void
.end method
