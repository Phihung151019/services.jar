.class public final Lcom/android/server/chimera/PsiMonitor;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAvailable:Z

.field public final mEventIdList:Ljava/util/ArrayList;

.field public mIsMonitoring:Z

.field public final mPsiEvents:Landroid/util/SparseArray;

.field public final mThread:Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;


# direct methods
.method public static bridge synthetic -$$Nest$mnativeWaitForEvent(Lcom/android/server/chimera/PsiMonitor;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/chimera/PsiMonitor;->nativeWaitForEvent()I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PsiMonitor;->mPsiEvents:Landroid/util/SparseArray;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/chimera/PsiMonitor;->mEventIdList:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;

    invoke-direct {v0, p0}, Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;-><init>(Lcom/android/server/chimera/PsiMonitor;)V

    iput-object v0, p0, Lcom/android/server/chimera/PsiMonitor;->mThread:Lcom/android/server/chimera/PsiMonitor$PsiMonitorThread;

    invoke-direct {p0}, Lcom/android/server/chimera/PsiMonitor;->nativeInit()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/chimera/PsiMonitor;->mAvailable:Z

    iput-boolean v1, p0, Lcom/android/server/chimera/PsiMonitor;->mIsMonitoring:Z

    if-nez v0, :cond_1

    const-string p0, "ChimeraPsiMonitor"

    const-string/jumbo v0, "psi monitor is not available"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private native nativeGetDump()Ljava/lang/String;
.end method

.method private native nativeInit()I
.end method

.method private native nativeRegisterEvent(IIIII)I
.end method

.method private native nativeWaitForEvent()I
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    const-string/jumbo v0, "dumpsys ChimeraManagerService PsiMonitor"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "Settings"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "  DISABLE_REGISTER_AFTER_START_MONITORING="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-boolean v0, p0, Lcom/android/server/chimera/PsiMonitor;->mAvailable:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/chimera/PsiMonitor;->mIsMonitoring:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/chimera/PsiMonitor;->nativeGetDump()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string/jumbo v0, "Max execution time"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/chimera/PsiMonitor;->mEventIdList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/chimera/PsiMonitor;->mPsiEvents:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/chimera/PsiMonitor$Event;

    if-eqz v4, :cond_0

    const-string v5, "  eventId="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, " time="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v3, v4, Lcom/android/server/chimera/PsiMonitor$Event;->mMaxExecutionTimeNanos:J

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final registerMemoryEvent(IILcom/android/server/chimera/SystemEventListener$1;)Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/chimera/PsiMonitor;->mIsMonitoring:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo p0, "cannot register event after start monitoring"

    const-string p1, "ChimeraPsiMonitor"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/chimera/PsiMonitor;->mAvailable:Z

    if-eqz v0, :cond_2

    const/4 v7, 0x0

    const v5, 0xf4240

    const/16 v6, 0x3e8

    move-object v2, p0

    move v3, p1

    move v4, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/server/chimera/PsiMonitor;->nativeRegisterEvent(IIIII)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, v2, Lcom/android/server/chimera/PsiMonitor;->mPsiEvents:Landroid/util/SparseArray;

    new-instance p2, Lcom/android/server/chimera/PsiMonitor$Event;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p3, p2, Lcom/android/server/chimera/PsiMonitor$Event;->mCallback:Lcom/android/server/chimera/SystemEventListener$1;

    const-wide/16 v0, 0x0

    iput-wide v0, p2, Lcom/android/server/chimera/PsiMonitor$Event;->mMaxExecutionTimeNanos:J

    invoke-virtual {p1, p0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object p1, v2, Lcom/android/server/chimera/PsiMonitor;->mEventIdList:Ljava/util/ArrayList;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method
