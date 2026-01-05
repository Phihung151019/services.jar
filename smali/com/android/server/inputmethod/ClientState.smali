.class public final Lcom/android/server/inputmethod/ClientState;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAccessibilitySessions:Landroid/util/SparseArray;

.field public final mBinding:Landroid/view/inputmethod/InputBinding;

.field public final mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

.field public final mClientDeathRecipient:Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;

.field public mCurSession:Lcom/android/server/inputmethod/InputMethodManagerService$SessionState;

.field public final mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

.field public final mPid:I

.field public final mSelfReportedDisplayId:I

.field public mSessionRequested:Z

.field public mSessionRequestedForAccessibility:Z

.field public final mUid:I


# direct methods
.method public constructor <init>(Lcom/android/server/inputmethod/IInputMethodClientInvoker;Lcom/android/internal/inputmethod/IRemoteInputConnection;IIILcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/ClientState;->mAccessibilitySessions:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/inputmethod/ClientState;->mClient:Lcom/android/server/inputmethod/IInputMethodClientInvoker;

    iput-object p2, p0, Lcom/android/server/inputmethod/ClientState;->mFallbackInputConnection:Lcom/android/internal/inputmethod/IRemoteInputConnection;

    iput p3, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    iput p4, p0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    iput p5, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    new-instance p1, Landroid/view/inputmethod/InputBinding;

    const/4 p5, 0x0

    invoke-interface {p2}, Lcom/android/internal/inputmethod/IRemoteInputConnection;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-direct {p1, p5, p2, p3, p4}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/os/IBinder;II)V

    iput-object p1, p0, Lcom/android/server/inputmethod/ClientState;->mBinding:Landroid/view/inputmethod/InputBinding;

    iput-object p6, p0, Lcom/android/server/inputmethod/ClientState;->mClientDeathRecipient:Lcom/android/server/inputmethod/ClientController$$ExternalSyntheticLambda0;

    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ClientState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ClientState;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/inputmethod/ClientState;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSelfReportedDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/inputmethod/ClientState;->mSelfReportedDisplayId:I

    const-string/jumbo v1, "}"

    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
