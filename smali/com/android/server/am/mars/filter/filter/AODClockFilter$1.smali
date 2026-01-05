.class public final Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/mars/filter/filter/AODClockFilter;Landroid/os/Handler;I)V
    .locals 0

    iput p3, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    iget p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x0

    :try_start_0
    iget-object p2, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string/jumbo v0, "add_info_today_schedule"

    invoke-static {p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "calendarWidget "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "MARs:AODClockFilter"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    move p2, p1

    :goto_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    move p1, v0

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->isUsingAODCalendarWidget:Z

    return-void

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/am/mars/filter/filter/AODClockFilter$1;->this$0:Lcom/android/server/am/mars/filter/filter/AODClockFilter;

    invoke-virtual {p0}, Lcom/android/server/am/mars/filter/filter/AODClockFilter;->getAODClockType()V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
