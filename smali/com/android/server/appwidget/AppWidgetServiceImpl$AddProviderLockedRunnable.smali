.class public final Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mIndex:I

.field public final mLatch:Ljava/util/concurrent/CountDownLatch;

.field public final mReceiversCheckArray:[Z

.field public final mRi:Landroid/content/pm/ResolveInfo;

.field public final synthetic this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/appwidget/AppWidgetServiceImpl;Ljava/util/concurrent/CountDownLatch;Landroid/content/pm/ResolveInfo;I[Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iput-object p2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    iput-object p3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    iput p4, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    iput-object p5, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    const-string/jumbo v0, "addProviderLocked failed "

    const/4 v1, 0x1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->this$0:Lcom/android/server/appwidget/AppWidgetServiceImpl;

    iget-object v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v2, v3}, Lcom/android/server/appwidget/AppWidgetServiceImpl;->addProviderLocked(Landroid/content/pm/ResolveInfo;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    aput-boolean v1, v0, v2

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "AppWidgetServiceImpl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mRi:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    iget v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    aput-boolean v1, v0, v2

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void

    :goto_0
    iget-object v2, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mReceiversCheckArray:[Z

    iget v3, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mIndex:I

    aput-boolean v1, v2, v3

    iget-object p0, p0, Lcom/android/server/appwidget/AppWidgetServiceImpl$AddProviderLockedRunnable;->mLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method
