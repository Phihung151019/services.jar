.class public final Lcom/android/server/appop/AppOpsService$1$1;
.super Landroid/os/AsyncTask;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$1:Lcom/android/server/appop/AppOpsService$1;


# direct methods
.method public constructor <init>(Lcom/android/server/appop/AppOpsService$1;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/appop/AppOpsService$1$1;->this$1:Lcom/android/server/appop/AppOpsService$1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$1$1;->this$1:Lcom/android/server/appop/AppOpsService$1;

    iget-object p0, p0, Lcom/android/server/appop/AppOpsService$1;->this$0:Lcom/android/server/appop/AppOpsService;

    invoke-virtual {p0}, Lcom/android/server/appop/AppOpsService;->writeRecentAccesses()V

    const/4 p0, 0x0

    return-object p0
.end method
