.class public final Lcom/android/server/enterprise/email/AccountSMIMECertificate;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

.field public final mPassword:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final sMode:I


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPath:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mPassword:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->sMode:I

    iput-object p1, p0, Lcom/android/server/enterprise/email/AccountSMIMECertificate;->mCxtInfo:Lcom/samsung/android/knox/ContextInfo;

    return-void
.end method
