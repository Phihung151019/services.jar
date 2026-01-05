.class public final Lcom/android/server/job/restrictions/OlafRestriction$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/restrictions/OlafRestriction;


# direct methods
.method public constructor <init>(Lcom/android/server/job/restrictions/OlafRestriction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/restrictions/OlafRestriction$1;->this$0:Lcom/android/server/job/restrictions/OlafRestriction;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo p1, "job_restriction"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    const-string v1, " olaf state update: state="

    const-string/jumbo v2, "OlafRestriction"

    invoke-static {v1, v2, p1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/android/server/job/restrictions/OlafRestriction$1;->this$0:Lcom/android/server/job/restrictions/OlafRestriction;

    iget-boolean v3, v1, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    if-eq v3, p1, :cond_1

    iput-boolean p1, v1, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    if-eqz p1, :cond_0

    const-string/jumbo p1, "olaf_target_uid"

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, v1, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    goto :goto_0

    :cond_0
    iput v0, v1, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafUid:I

    :goto_0
    const-string p1, " sending trigger onRestrictionStateChanged msg."

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/job/restrictions/OlafRestriction$1;->this$0:Lcom/android/server/job/restrictions/OlafRestriction;

    iget-boolean p1, p0, Lcom/android/server/job/restrictions/OlafRestriction;->mOlafOn:Z

    invoke-virtual {p0, p1}, Lcom/android/server/job/restrictions/OlafRestriction;->sendOnRestrictionStateChanged(Z)V

    :cond_1
    return-void
.end method
