.class public final Lcom/android/server/autofill/Session$4;
.super Landroid/os/ResultReceiver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mAutofillId:Landroid/view/autofill/AutofillId;

.field public final synthetic this$0:Lcom/android/server/autofill/Session;


# direct methods
.method public constructor <init>(Lcom/android/server/autofill/Session;Landroid/os/Handler;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    invoke-direct {p0, p2}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iget-object p1, p1, Lcom/android/server/autofill/Session;->mCurrentViewId:Landroid/view/autofill/AutofillId;

    iput-object p1, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    return-void
.end method


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4

    const/4 v0, 0x0

    const-string v1, "AutofillSession"

    if-nez p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onReceiveResult from Credential Manager bottom sheet with mCurrentViewId: "

    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p1, "android.service.credentials.extra.GET_CREDENTIAL_RESPONSE"

    const-class v1, Landroid/credentials/GetCredentialResponse;

    invoke-virtual {p2, p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/credentials/GetCredentialResponse;

    iget-object p2, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    iget-object p0, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {p2, v0, p1, p0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    return-void

    :cond_0
    const/4 v2, -0x1

    if-ne p1, v2, :cond_2

    const-string/jumbo p1, "android.service.credentials.extra.GET_CREDENTIAL_EXCEPTION"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    array-length p2, p1

    const/4 v2, 0x2

    if-lt p2, v2, :cond_1

    const/4 p2, 0x0

    aget-object p2, p1, p2

    const/4 v2, 0x1

    aget-object p1, p1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Credman bottom sheet from pinned entry failed with: + "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/autofill/Session$4;->this$0:Lcom/android/server/autofill/Session;

    new-instance v2, Landroid/credentials/GetCredentialException;

    invoke-direct {v2, p2, p1}, Landroid/credentials/GetCredentialException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/autofill/Session$4;->mAutofillId:Landroid/view/autofill/AutofillId;

    invoke-virtual {v1, v2, v0, p0}, Lcom/android/server/autofill/Session;->sendCredentialManagerResponseToApp(Landroid/credentials/GetCredentialException;Landroid/credentials/GetCredentialResponse;Landroid/view/autofill/AutofillId;)V

    :cond_1
    return-void

    :cond_2
    const-string/jumbo p0, "Unknown resultCode from credential manager bottom sheet: "

    invoke-static {p1, p0, v1}, Lcom/android/server/AnyMotionDetector$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
