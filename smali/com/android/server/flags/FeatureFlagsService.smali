.class public Lcom/android/server/flags/FeatureFlagsService;
.super Lcom/android/server/SystemService;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

.field public final mShellCommand:Lcom/android/server/flags/FlagsShellCommand;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/flags/FlagOverrideStore;

    new-instance v1, Lcom/android/server/flags/GlobalSettingsProxy;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/android/server/flags/GlobalSettingsProxy;-><init>(Landroid/content/ContentResolver;)V

    invoke-direct {v0, v1}, Lcom/android/server/flags/FlagOverrideStore;-><init>(Lcom/android/server/flags/GlobalSettingsProxy;)V

    iput-object v0, p0, Lcom/android/server/flags/FeatureFlagsService;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    new-instance p1, Lcom/android/server/flags/FlagsShellCommand;

    invoke-direct {p1, v0}, Lcom/android/server/flags/FlagsShellCommand;-><init>(Lcom/android/server/flags/FlagOverrideStore;)V

    iput-object p1, p0, Lcom/android/server/flags/FeatureFlagsService;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    const/16 p0, 0x1f4

    if-ne p1, p0, :cond_0

    invoke-static {}, Landroid/flags/FeatureFlags;->getInstance()Landroid/flags/FeatureFlags;

    move-result-object p0

    invoke-virtual {p0}, Landroid/flags/FeatureFlags;->sync()V

    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 4

    const-string v0, "FeatureFlagsService"

    const-string/jumbo v1, "Started Feature Flag Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/flags/FeatureFlagsBinder;

    new-instance v1, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/flags/FeatureFlagsService;->mFlagStore:Lcom/android/server/flags/FlagOverrideStore;

    iget-object v3, p0, Lcom/android/server/flags/FeatureFlagsService;->mShellCommand:Lcom/android/server/flags/FlagsShellCommand;

    invoke-direct {v0, v2, v3, v1}, Lcom/android/server/flags/FeatureFlagsBinder;-><init>(Lcom/android/server/flags/FlagOverrideStore;Lcom/android/server/flags/FlagsShellCommand;Lcom/android/server/flags/FeatureFlagsService$PermissionsChecker;)V

    const-string/jumbo v1, "feature_flags"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v1, Landroid/flags/FeatureFlags;

    new-instance v2, Landroid/flags/FeatureFlags;

    invoke-direct {v2, v0}, Landroid/flags/FeatureFlags;-><init>(Landroid/flags/IFeatureFlags;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method
