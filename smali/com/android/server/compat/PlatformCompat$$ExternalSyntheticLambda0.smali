.class public final synthetic Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/compat/PlatformCompat;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/compat/PlatformCompat;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 4

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/compat/PlatformCompat;

    check-cast p1, Lcom/android/internal/compat/CompatibilityChangeInfo;

    sget v0, Lcom/android/server/compat/PlatformCompat;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getId()J

    move-result-wide v0

    const-wide/32 v2, 0x8e787b1

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    if-lez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v0

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result p1

    iget-object p0, p0, Lcom/android/server/compat/PlatformCompat;->mBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {p0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result p0

    if-gt p1, p0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
