.class public final Lcom/android/server/pm/InstantAppResolverConnection$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic val$callback:Lcom/android/server/pm/InstantAppResolver$1;

.field public final synthetic val$callbackHandler:Landroid/os/Handler;

.field public final synthetic val$startTime:J


# direct methods
.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/pm/InstantAppResolver$1;J)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callback:Lcom/android/server/pm/InstantAppResolver$1;

    iput-wide p3, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$startTime:J

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public final sendResult(Landroid/os/Bundle;)V
    .locals 4

    const-string/jumbo v0, "android.app.extra.RESOLVE_INFO"

    const-class v1, Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callbackHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$callback:Lcom/android/server/pm/InstantAppResolver$1;

    iget-wide v2, p0, Lcom/android/server/pm/InstantAppResolverConnection$1;->val$startTime:J

    new-instance p0, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;

    invoke-direct {p0, v1, p1, v2, v3}, Lcom/android/server/pm/InstantAppResolverConnection$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstantAppResolver$1;Ljava/util/ArrayList;J)V

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
