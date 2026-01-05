.class public final Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;
.super Ljava/lang/Thread;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public mAccId:J

.field public mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mSMIMECertificate:Lcom/android/server/enterprise/email/AccountSMIMECertificate;

    iget-object v5, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    iget v1, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    iget-object v2, v0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "SMIME Certificate as Account Creation Time >>>>>>> "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "AccountsReceiver"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v8, 0x0

    :try_start_0
    const-string/jumbo v0, "eas_account_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    move-object v1, v0

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificate(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move v9, v1

    move-object v1, v0

    move v0, v9

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForEncryption(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    goto :goto_2

    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    iget-wide v3, p0, Lcom/android/server/enterprise/email/AccountsReceiver$SMIMEThread;->mAccId:J

    invoke-interface/range {v1 .. v6}, Lcom/samsung/android/knox/accounts/IExchangeAccountPolicy;->setForceSMIMECertificateForSigning(Lcom/samsung/android/knox/ContextInfo;JLjava/lang/String;Ljava/lang/String;)I

    move-result v8
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_0
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    const-string/jumbo v0, "SMIMEThread : unexpected Exception occurs. "

    invoke-static {v7, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :goto_1
    sget-object v0, Lcom/android/server/enterprise/email/AccountsReceiver;->mSmimeCerticateList:Ljava/util/Map;

    const-string/jumbo v0, "SMIMEThread : Failed talking with exchange account policy"

    invoke-static {v7, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_2
    const-string p0, "<<<<<<< SMIME Certificate as Account Creation Time : "

    invoke-static {v8, p0, v7}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
