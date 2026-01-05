.class public final Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$CarConnectionQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# virtual methods
.method public final onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 1

    const-string/jumbo p0, "onQueryComplete: "

    const-string p1, "CarConnectedFilter"

    if-nez p3, :cond_0

    :try_start_0
    const-string/jumbo p0, "Null response from content provider"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    return-void

    :cond_0
    const-string p2, "CarConnectionState"

    invoke-interface {p3, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p2

    if-gez p2, :cond_1

    const-string p0, "Connection to car response is missing"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    return-void

    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_2

    const-string p0, "Connection to car response is empty"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    return-void

    :cond_2
    invoke-interface {p3, p2}, Landroid/database/Cursor;->getInt(I)I

    move-result p2

    if-nez p2, :cond_3

    const-string p0, "Android Auto disconnected"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    return-void

    :cond_3
    const-string p3, "Android Auto connected"

    invoke-static {p1, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->listener:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->isCarConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    const-string p0, "FILTER 32"

    const-string/jumbo p2, "android auto on"

    invoke-static {p0, p2}, Lcom/android/server/am/mars/MARsUtils;->addFilterDebugInfoToHistory(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string p0, "Error at onQueryComplete"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/am/mars/filter/filter/CarConnectedFilter;->-$$Nest$smnotifyCarDisconnected()V

    return-void
.end method
