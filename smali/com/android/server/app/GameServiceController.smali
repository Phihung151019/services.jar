.class public final Lcom/android/server/app/GameServiceController;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public volatile mActiveGameServiceComponentConfiguration:Lcom/android/server/app/GameServiceConfiguration$GameServiceComponentConfiguration;

.field public volatile mActiveGameServiceProviderPackage:Ljava/lang/String;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mContext:Landroid/content/Context;

.field public volatile mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

.field public mGameServicePackageChangedReceiver:Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

.field public volatile mGameServiceProviderInstance:Lcom/android/server/app/GameServiceProviderInstanceImpl;

.field public final mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

.field public volatile mGameServiceProviderOverride:Ljava/lang/String;

.field public final mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelectorImpl;

.field public volatile mHasBootCompleted:Z

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/server/app/GameServiceProviderSelectorImpl;Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderInstanceFactory:Lcom/android/server/app/GameServiceProviderInstanceFactoryImpl;

    iput-object p2, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lcom/android/server/app/GameServiceController;->mGameServiceProviderSelector:Lcom/android/server/app/GameServiceProviderSelectorImpl;

    return-void
.end method


# virtual methods
.method public final evaluateGameServiceProviderPackageChangedListenerLocked(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    :cond_1
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mActiveGameServiceProviderPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_0
    return-void

    :cond_2
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;-><init>(Lcom/android/server/app/GameServiceController;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/app/GameServiceController;->mGameServicePackageChangedReceiver:Lcom/android/server/app/GameServiceController$PackageChangedBroadcastReceiver;

    iget-object p0, p0, Lcom/android/server/app/GameServiceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final setCurrentForegroundUserAndEvaluateProvider(Lcom/android/server/SystemService$TargetUser;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/app/GameServiceController;->mCurrentForegroundUser:Lcom/android/server/SystemService$TargetUser;

    iget-object p1, p0, Lcom/android/server/app/GameServiceController;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/app/GameServiceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/app/GameServiceController;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
