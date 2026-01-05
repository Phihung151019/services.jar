.class public final synthetic Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(I[Ljava/lang/String;Ljava/util/ArrayList;I)V
    .locals 0

    iput p4, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    iput p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$2:I

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Landroid/content/pm/IPackageManager;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    iput p3, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$2:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->$r8$classId:I

    packed-switch v1, :pswitch_data_0

    iget v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$2:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    sget v3, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-eq v3, v1, :cond_0

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    if-eqz v1, :cond_1

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void

    :pswitch_0
    iget v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$2:I

    iget-object v2, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v2, [Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    check-cast p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;

    sget v3, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    iget v3, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    if-eq v3, v1, :cond_2

    iget-object v1, p1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->baseName:Ljava/lang/String;

    if-eqz v1, :cond_3

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    check-cast v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    check-cast v1, Landroid/content/pm/IPackageManager;

    iget p0, p0, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda4;->f$2:I

    check-cast p1, Ljava/lang/String;

    sget v2, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    const-string/jumbo v2, "Package: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x0

    :try_start_0
    invoke-interface {v1, p1, v2, v3, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    move-result-object p0

    if-eqz p0, :cond_4

    const-string v1, " v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Error getting package info: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "ActivityManager"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    :goto_0
    const-string p0, "\n"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
