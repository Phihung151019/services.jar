.class public final synthetic Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/Session;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/service/autofill/FillResponse;

.field public final synthetic f$3:Landroid/view/autofill/AutofillId;

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/Session;Ljava/lang/String;Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/Session;

    iput-object p2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$2:Landroid/service/autofill/FillResponse;

    iput-object p4, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$3:Landroid/view/autofill/AutofillId;

    iput p5, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$0:Lcom/android/server/autofill/Session;

    iget-object v1, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$2:Landroid/service/autofill/FillResponse;

    iget-object v3, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$3:Landroid/view/autofill/AutofillId;

    iget p0, p0, Lcom/android/server/autofill/Session$$ExternalSyntheticLambda5;->f$4:I

    iget-object v4, v0, Lcom/android/server/autofill/Session;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    invoke-static {v1}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v1

    invoke-virtual {v0, v2, v3, v1, p0}, Lcom/android/server/autofill/Session;->onFillReady(Landroid/service/autofill/FillResponse;Landroid/view/autofill/AutofillId;Landroid/view/autofill/AutofillValue;I)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
