.class public final Lcom/android/server/broadcastradio/RadioEventLogger;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mDebug:Z

.field public final mEventLogger:Landroid/util/LocalLog;

.field public final mTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mTag:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mDebug:Z

    new-instance p1, Landroid/util/LocalLog;

    const/16 v0, 0x19

    invoke-direct {p1, v0}, Landroid/util/LocalLog;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    return-void
.end method


# virtual methods
.method public final varargs logRadioEvent(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mEventLogger:Landroid/util/LocalLog;

    invoke-virtual {v1, v0}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mDebug:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/broadcastradio/RadioEventLogger;->mTag:Ljava/lang/String;

    invoke-static {p0, p1, p2}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
