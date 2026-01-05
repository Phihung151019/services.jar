.class public final Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/constrained/ConstrainedModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/enterprise/constrained/ConstrainedModeService$1;->this$0:Lcom/android/server/enterprise/constrained/ConstrainedModeService;

    invoke-virtual {v0}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->getConstrainedStateAll()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :cond_0
    :goto_0
    if-ge p2, p1, :cond_1

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 p2, p2, 0x1

    move-object v6, v1

    check-cast v6, Lcom/samsung/android/knox/EnrollData;

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getConstrainedState()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getComment()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getDownloadUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6}, Lcom/samsung/android/knox/EnrollData;->getTargetPkgName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/constrained/ConstrainedModeService;->showConstrainedStateNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    return-void
.end method
