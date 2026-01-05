.class public final Lcom/android/server/enterprise/application/ApplicationPolicy$2;
.super Landroid/os/ContainerStateReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/server/enterprise/application/ApplicationPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-direct {p0}, Landroid/os/ContainerStateReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onContainerUnlocked(Landroid/content/Context;ILandroid/os/Bundle;)V
    .locals 3

    sget-object p1, Lcom/android/server/enterprise/application/ApplicationPolicy;->mAppStartOnUserSwitch:Ljava/util/Map;

    if-eqz p1, :cond_1

    move-object p3, p1

    check-cast p3, Ljava/util/HashMap;

    invoke-virtual {p3}, Ljava/util/HashMap;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_1

    check-cast p1, Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    long-to-int p3, v0

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/enterprise/application/ApplicationPolicy$2;->this$0:Lcom/android/server/enterprise/application/ApplicationPolicy;

    invoke-static {v2, v0, v1, p3}, Lcom/android/server/enterprise/application/ApplicationPolicy;->-$$Nest$mstartCachedAppsForActiveUser(Lcom/android/server/enterprise/application/ApplicationPolicy;JI)V

    goto :goto_0

    :cond_1
    return-void
.end method
