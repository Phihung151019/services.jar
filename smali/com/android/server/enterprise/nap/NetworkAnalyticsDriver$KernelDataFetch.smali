.class public final Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;
.super Landroid/os/AsyncTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, [Ljava/lang/Void;

    const-string/jumbo p1, "NetworkAnalytics:NetworkAnalyticsDriver"

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->DBG:Z

    if-eqz v1, :cond_0

    const-string/jumbo v2, "_deliverDataToRecipients: Starting Async task."

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v2, v2, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    if-eqz v2, :cond_2

    if-eqz v1, :cond_1

    const-string/jumbo v1, "_deliverDataToRecipients: Initialzing handler thread from Async task."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->dataDeliver:Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDataDelivery;->initializeHandlerThread()V

    :goto_1
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    iget-object v1, v1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->atomicBoolean:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v1}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->readDevice()Ljava/lang/String;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    const-wide/16 v1, 0x19

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string/jumbo v1, "_deliverDataToRecipients: Data Delivery object is null. Terminate."

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    invoke-virtual {v1, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :goto_2
    const-string/jumbo v2, "doInBackground: Exception"

    invoke-static {p1, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_4
    iget-object p0, p0, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver$KernelDataFetch;->this$0:Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;

    sget-object p1, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->TAG:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/enterprise/nap/NetworkAnalyticsDriver;->setStateOfThread(Z)V

    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public final bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Void;

    return-void
.end method

.method public final onPreExecute()V
    .locals 0

    return-void
.end method
