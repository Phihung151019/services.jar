.class public final synthetic Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

.field public final synthetic f$1:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$2:Landroid/content/ComponentName;

.field public final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iput-object p2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;->f$2:Landroid/content/ComponentName;

    iput p4, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;->f$3:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/autofill/RemoteAugmentedAutofillService;

    iget-object v1, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;->f$1:Ljava/util/concurrent/atomic/AtomicReference;

    iget-object v2, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;->f$2:Landroid/content/ComponentName;

    iget p0, p0, Lcom/android/server/autofill/RemoteAugmentedAutofillService$$ExternalSyntheticLambda3;->f$3:I

    check-cast p1, Ljava/lang/Void;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, v1, v2, p0, p2}, Lcom/android/server/autofill/RemoteAugmentedAutofillService;->$r8$lambda$IXYPMbjPeMt7KfClcttRpU_yFvU(Lcom/android/server/autofill/RemoteAugmentedAutofillService;Ljava/util/concurrent/atomic/AtomicReference;Landroid/content/ComponentName;ILjava/lang/Throwable;)V

    return-void
.end method
