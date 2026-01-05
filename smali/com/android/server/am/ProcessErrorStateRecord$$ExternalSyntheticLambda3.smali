.class public final synthetic Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/ProcessErrorStateRecord;

.field public final synthetic f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

.field public final synthetic f$2:Z

.field public final synthetic f$3:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ProcessErrorStateRecord;Lcom/android/internal/os/anr/AnrLatencyTracker;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    iput-object p2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iput-boolean p3, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$2:Z

    iput-boolean p4, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$3:Z

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/am/ProcessErrorStateRecord;

    iget-object v1, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$1:Lcom/android/internal/os/anr/AnrLatencyTracker;

    iget-boolean v2, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$2:Z

    iget-boolean p0, p0, Lcom/android/server/am/ProcessErrorStateRecord$$ExternalSyntheticLambda3;->f$3:Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionStarted()V

    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isSystemExt()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    if-nez v2, :cond_2

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    goto :goto_2

    :cond_2
    :goto_0
    move p0, v4

    :goto_1
    sget-object v2, Lcom/android/server/Watchdog;->NATIVE_STACKS_OF_INTEREST:[Ljava/lang/String;

    array-length v3, v2

    if-ge p0, v3, :cond_4

    aget-object v2, v2, p0

    iget-object v3, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/String;

    iget-object v0, v0, Lcom/android/server/am/ProcessErrorStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v0, p0, v4

    goto :goto_2

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_4
    move-object p0, v5

    :goto_2
    if-nez p0, :cond_5

    move-object p0, v5

    goto :goto_3

    :cond_5
    invoke-static {p0}, Landroid/os/Process;->getPidsForCommands([Ljava/lang/String;)[I

    move-result-object p0

    :goto_3
    if-eqz p0, :cond_6

    new-instance v5, Ljava/util/ArrayList;

    array-length v0, p0

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v0, p0

    :goto_4
    if-ge v4, v0, :cond_6

    aget v2, p0, v4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Lcom/android/internal/os/anr/AnrLatencyTracker;->nativePidCollectionEnded()V

    return-object v5
.end method
