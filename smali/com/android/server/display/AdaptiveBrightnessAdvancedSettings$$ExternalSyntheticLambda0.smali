.class public final synthetic Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

.field public final synthetic f$1:Landroid/content/ContentResolver;

.field public final synthetic f$2:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

.field public final synthetic f$3:Landroid/content/IntentFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;Landroid/content/ContentResolver;Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;Landroid/content/IntentFilter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    iput-object p2, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    iput-object p3, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

    iput-object p4, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentFilter;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;

    iget-object v1, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$1:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$2:Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$SettingsObserver;

    iget-object p0, p0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$$ExternalSyntheticLambda0;->f$3:Landroid/content/IntentFilter;

    const-string/jumbo v3, "darkening_rate_ratio"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v1, v0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$PackageRemovedReceiver;

    invoke-direct {v2, v0}, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings$PackageRemovedReceiver;-><init>(Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;)V

    iget-object v0, v0, Lcom/android/server/display/AdaptiveBrightnessAdvancedSettings;->mHandler:Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method
