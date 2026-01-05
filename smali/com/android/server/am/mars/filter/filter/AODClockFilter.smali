.class public final Lcom/android/server/am/mars/filter/filter/AODClockFilter;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/server/am/mars/filter/IFilter;


# instance fields
.field public isAodTypeCalendar:Z

.field public isUsingAODCalendarWidget:Z

.field public mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

.field public mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

.field public mContext:Landroid/content/Context;


# virtual methods
.method public final deInit()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string/jumbo p0, "MARs:AODClockFilter"

    const-string v0, "IllegalArgumentException occurred in unregisterContentObserver()"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public final filter(IIILjava/lang/String;)I
    .locals 0

    iget-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isUsingAODCalendarWidget:Z

    if-nez p1, :cond_0

    iget-boolean p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isAodTypeCalendar:Z

    if-eqz p0, :cond_1

    :cond_0
    const-string/jumbo p0, "com.samsung.android.calendar"

    invoke-virtual {p0, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x19

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final getAODClockType()V
    .locals 9

    const/4 v1, 0x0

    const/4 v2, -0x1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v0, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v3, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object v4, v0

    :try_start_2
    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_3
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v4

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    invoke-interface {v3}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_3
    const v0, 0xc351

    if-ne v2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isAodTypeCalendar:Z

    return-void
.end method

.method public final init(Landroid/content/Context;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    const/4 v1, 0x1

    invoke-direct {p1, p0, v0, v1}, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;-><init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;I)V

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "content://com.samsung.android.app.aodservice.provider/settings/aod_clock_type"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODClockTypeObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "content://settings/system/add_info_today_schedule"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mAODCalendarWidgetObserver:Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->getAODClockType()V

    return-void
.end method
