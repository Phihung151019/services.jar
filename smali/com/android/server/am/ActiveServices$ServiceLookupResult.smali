.class public final Lcom/android/server/am/ActiveServices$ServiceLookupResult;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final aliasComponent:Landroid/content/ComponentName;

.field public final permission:Ljava/lang/String;

.field public final record:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Landroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->record:Lcom/android/server/am/ServiceRecord;

    iput-object p1, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->permission:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$ServiceLookupResult;->aliasComponent:Landroid/content/ComponentName;

    return-void
.end method
