.class public final synthetic Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$VoidJob;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

.field public final synthetic f$1:Landroid/service/assist/classification/FieldClassificationRequest;

.field public final synthetic f$2:Ljava/lang/ref/WeakReference;

.field public final synthetic f$3:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Landroid/service/assist/classification/FieldClassificationRequest;Ljava/lang/ref/WeakReference;J)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$1:Landroid/service/assist/classification/FieldClassificationRequest;

    iput-object p3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/ref/WeakReference;

    iput-wide p4, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$3:J

    return-void
.end method


# virtual methods
.method public final runNoResult(Ljava/lang/Object;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/autofill/RemoteFieldClassificationService;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$1:Landroid/service/assist/classification/FieldClassificationRequest;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$2:Ljava/lang/ref/WeakReference;

    iget-wide v3, p0, Lcom/android/server/autofill/RemoteFieldClassificationService$$ExternalSyntheticLambda1;->f$3:J

    check-cast p1, Landroid/service/assist/classification/IFieldClassificationService;

    sget p0, Lcom/android/server/autofill/RemoteFieldClassificationService;->$r8$clinit:I

    new-instance p0, Lcom/android/server/autofill/RemoteFieldClassificationService$1;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/android/server/autofill/RemoteFieldClassificationService$1;-><init>(Lcom/android/server/autofill/RemoteFieldClassificationService;Ljava/lang/ref/WeakReference;J)V

    invoke-interface {p1, v1, p0}, Landroid/service/assist/classification/IFieldClassificationService;->onFieldClassificationRequest(Landroid/service/assist/classification/FieldClassificationRequest;Landroid/service/assist/classification/IFieldClassificationCallback;)V

    return-void
.end method
