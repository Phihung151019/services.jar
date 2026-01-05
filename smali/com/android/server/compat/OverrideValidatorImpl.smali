.class public Lcom/android/server/compat/OverrideValidatorImpl;
.super Lcom/android/internal/compat/IOverrideValidator$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

.field public final mCompatConfig:Lcom/android/server/compat/CompatConfig;

.field public final mContext:Landroid/content/Context;

.field public mForceNonDebuggableFinalBuild:Z


# direct methods
.method public constructor <init>(Lcom/android/internal/compat/AndroidBuildClassifier;Landroid/content/Context;Lcom/android/server/compat/CompatConfig;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/compat/IOverrideValidator$Stub;-><init>()V

    iput-object p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    iput-object p2, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    return-void
.end method


# virtual methods
.method public final getOverrideAllowedState(JLjava/lang/String;)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p3, p1, p2, v0}, Lcom/android/server/compat/OverrideValidatorImpl;->getOverrideAllowedStateInternal(Ljava/lang/String;JZ)Lcom/android/internal/compat/OverrideAllowedState;

    move-result-object p0

    return-object p0
.end method

.method public final getOverrideAllowedStateInternal(Ljava/lang/String;JZ)Lcom/android/internal/compat/OverrideAllowedState;
    .locals 8

    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v0, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/compat/CompatChange;

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getLoggingOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 p1, 0x5

    invoke-direct {p0, p1, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->isDebuggableBuild()Z

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    iget-object v4, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v4}, Lcom/android/internal/compat/AndroidBuildClassifier;->isFinalBuild()Z

    move-result v4

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mForceNonDebuggableFinalBuild:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move v4, v3

    goto :goto_2

    :cond_3
    :goto_1
    move v4, v2

    :goto_2
    iget-object v5, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v5, v5, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/compat/CompatChange;

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v6

    if-eq v6, v1, :cond_4

    invoke-virtual {v5}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getEnableSinceTargetSdk()I

    move-result v5

    sub-int/2addr v5, v2

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    iget-object v6, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v6, v6, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/compat/CompatChange;

    if-eqz v6, :cond_5

    invoke-virtual {v6}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getDisabled()Z

    move-result v6

    if-eqz v6, :cond_5

    move v6, v2

    goto :goto_4

    :cond_5
    move v6, v3

    :goto_4
    if-eqz v0, :cond_6

    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p0, v3, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    :cond_6
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mAndroidBuildClassifier:Lcom/android/internal/compat/AndroidBuildClassifier;

    invoke-virtual {v0}, Lcom/android/internal/compat/AndroidBuildClassifier;->platformTargetSdk()I

    move-result v0

    if-lt v5, v0, :cond_7

    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 p1, 0x6

    invoke-direct {p0, p1, v1, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    :cond_7
    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    if-eqz v0, :cond_f

    const/high16 v7, 0x400000

    :try_start_0
    invoke-virtual {v0, p1, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mCompatConfig:Lcom/android/server/compat/CompatConfig;

    iget-object v0, v0, Lcom/android/server/compat/CompatConfig;->mChanges:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/compat/CompatChange;

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Lcom/android/internal/compat/CompatibilityChangeInfo;->getOverridable()Z

    move-result p2

    if-eqz p2, :cond_9

    if-nez p4, :cond_8

    iget-object p0, p0, Lcom/android/server/compat/OverrideValidatorImpl;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "android.permission.OVERRIDE_COMPAT_CHANGE_CONFIG_ON_RELEASE_BUILD"

    invoke-virtual {p0, p2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_9

    :cond_8
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p0, v3, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    :cond_9
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 p2, 0x2

    and-int/2addr p1, p2

    if-nez p1, :cond_a

    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p0, v2, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    :cond_a
    if-nez v4, :cond_b

    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p1, v3, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p1

    :cond_b
    if-ne v5, v1, :cond_c

    if-nez v6, :cond_c

    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p1, p2, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p1

    :cond_c
    if-nez v6, :cond_e

    if-gt p0, v5, :cond_d

    goto :goto_5

    :cond_d
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 p2, 0x3

    invoke-direct {p1, p2, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p1

    :cond_e
    :goto_5
    new-instance p1, Lcom/android/internal/compat/OverrideAllowedState;

    invoke-direct {p1, v3, p0, v5}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p1

    :catch_0
    new-instance p0, Lcom/android/internal/compat/OverrideAllowedState;

    const/4 p1, 0x4

    invoke-direct {p0, p1, v1, v1}, Lcom/android/internal/compat/OverrideAllowedState;-><init>(III)V

    return-object p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string/jumbo p1, "No PackageManager!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
