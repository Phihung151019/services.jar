.class public final Lcom/android/server/power/PowerManagerShellCommand$1;
.super Landroid/app/IAlarmListener$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/PowerManagerShellCommand;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerShellCommand;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    invoke-direct {p0}, Landroid/app/IAlarmListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final doAlarm(Landroid/app/IAlarmCompleteListener;)V
    .locals 7

    iget-object p1, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    iget-object v0, p1, Lcom/android/server/power/PowerManagerShellCommand;->mService:Lcom/android/server/power/PowerManagerService$BinderService;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand$1;->this$0:Lcom/android/server/power/PowerManagerShellCommand;

    iget-object p0, p0, Lcom/android/server/power/PowerManagerShellCommand;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v3, 0x2

    const-string/jumbo v4, "PowerManagerShellCommand"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUpWithDisplayId(JILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method
