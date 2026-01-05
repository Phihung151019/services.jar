.class public final Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field public final synthetic this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

.field public final visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;


# direct methods
.method public constructor <init>(Lcom/android/server/am/mars/util/ForegroundServiceMgr;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    new-instance p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->filterUid:I

    iput v0, p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->curUid:I

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p1, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

    iput-object p1, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    return-void
.end method


# virtual methods
.method public final getAccessTimeOfOp(ILjava/lang/String;)V
    .locals 13

    iget-object v0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->this$0:Lcom/android/server/am/mars/util/ForegroundServiceMgr;

    iget-object v0, v0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->mMapFGSRecord:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/mars/ForegroundServiceRecord;

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper;->visitor:Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;

    iget-object p0, p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr$GetAccesesTimeHelper$CustomVisitor;->accessTimePerOp:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sget p0, Lcom/android/server/am/mars/util/ForegroundServiceMgr;->$r8$clinit:I

    const-string/jumbo p0, "access at "

    const-string v2, ", "

    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;JLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const-string/jumbo v5, "null"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v5

    const-string v6, "%16s"

    invoke-static {v6, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_0
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string/jumbo v6, "yyyy/MM/dd HH:mm"

    invoke-direct {v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v6, Ljava/util/Date;

    invoke-direct {v6, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v5, v6}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    :goto_0
    const-string v6, "ForegroundServiceMgr"

    invoke-static {p0, v5, v6}, Lcom/android/server/BootReceiver$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_9

    iget-wide v5, p1, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSStartTime:J

    iget-wide v7, p1, Lcom/android/server/am/mars/ForegroundServiceRecord;->mFGSEndTime:J

    const-wide/16 v9, 0x3c

    const-wide/16 v11, 0x3e8

    if-eqz v4, :cond_1

    div-long/2addr v0, v11

    div-long/2addr v0, v9

    goto :goto_1

    :cond_1
    move-wide v0, v2

    :goto_1
    cmp-long p0, v5, v2

    if-eqz p0, :cond_2

    div-long/2addr v5, v11

    div-long/2addr v5, v9

    goto :goto_2

    :cond_2
    move-wide v5, v2

    :goto_2
    cmp-long p0, v7, v2

    if-eqz p0, :cond_3

    div-long/2addr v7, v11

    div-long/2addr v7, v9

    goto :goto_3

    :cond_3
    move-wide v7, v2

    :goto_3
    cmp-long p0, v5, v2

    if-lez p0, :cond_9

    cmp-long p0, v7, v5

    if-ltz p0, :cond_9

    cmp-long p0, v5, v0

    if-gtz p0, :cond_9

    cmp-long p0, v0, v7

    if-gtz p0, :cond_9

    if-nez p2, :cond_4

    goto :goto_4

    :cond_4
    const-string/jumbo p0, "location"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/16 p0, 0x8

    goto :goto_5

    :cond_5
    const-string/jumbo p0, "record"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_6

    const/16 p0, 0x80

    goto :goto_5

    :cond_6
    const-string/jumbo p0, "audio"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_7

    const/4 p0, 0x2

    goto :goto_5

    :cond_7
    const-string/jumbo p0, "camera"

    invoke-virtual {p2, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_8

    const/16 p0, 0x40

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p0, 0x0

    :goto_5
    iget p2, p1, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    or-int/2addr p0, p2

    iput p0, p1, Lcom/android/server/am/mars/ForegroundServiceRecord;->mUsingForegroundType:I

    :cond_9
    return-void
.end method
