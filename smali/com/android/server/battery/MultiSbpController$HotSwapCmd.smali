.class final enum Lcom/android/server/battery/MultiSbpController$HotSwapCmd;
.super Ljava/lang/Enum;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/battery/MultiSbpController$HotSwapCmd;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

.field public static final enum DO_NOTHING:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

.field public static final enum OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

.field public static final enum ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

.field public static final isFactoryBinary:Z

.field public static final mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field public static final mToken:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    const-string v1, "DO_NOTHING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->DO_NOTHING:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    new-instance v1, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    const-string/jumbo v2, "OFF"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    new-instance v2, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    const-string/jumbo v3, "ON"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    filled-new-array {v0, v1, v2}, [Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    move-result-object v0

    sput-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->$VALUES:[Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    sput-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    sput-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mToken:Landroid/os/IBinder;

    invoke-static {}, Landroid/os/FactoryTest;->isFactoryBinary()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->isFactoryBinary:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/battery/MultiSbpController$HotSwapCmd;
    .locals 1

    const-class v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    return-object p0
.end method

.method public static values()[Lcom/android/server/battery/MultiSbpController$HotSwapCmd;
    .locals 1

    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->$VALUES:[Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    invoke-virtual {v0}, [Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    return-object v0
.end method


# virtual methods
.method public final run()V
    .locals 2

    sget-boolean v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->isFactoryBinary:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "run not supported in factory binary hotSwapCmd : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "[SS]MultiSbpControllerHotSwapCmd"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->ON:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    if-ne p0, v0, :cond_1

    sget-object p0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mToken:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/os/PowerManagerInternal;->enableWakeUpPrevention(Landroid/os/IBinder;)V

    return-void

    :cond_1
    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->OFF:Lcom/android/server/battery/MultiSbpController$HotSwapCmd;

    if-ne p0, v0, :cond_2

    sget-object p0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    sget-object v0, Lcom/android/server/battery/MultiSbpController$HotSwapCmd;->mToken:Landroid/os/IBinder;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManagerInternal;->disableWakeUpPrevention(Landroid/os/IBinder;Z)V

    :cond_2
    return-void
.end method
