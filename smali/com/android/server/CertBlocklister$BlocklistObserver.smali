.class public final Lcom/android/server/CertBlocklister$BlocklistObserver;
.super Landroid/database/ContentObserver;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"


# instance fields
.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mKey:Ljava/lang/String;

.field public final mPath:Ljava/lang/String;

.field public final mTmpDir:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentResolver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mPath:Ljava/lang/String;

    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mTmpDir:Ljava/io/File;

    iput-object p3, p0, Lcom/android/server/CertBlocklister$BlocklistObserver;->mContentResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    new-instance p1, Lcom/android/server/CertBlocklister$BlocklistObserver$1;

    invoke-direct {p1, p0}, Lcom/android/server/CertBlocklister$BlocklistObserver$1;-><init>(Lcom/android/server/CertBlocklister$BlocklistObserver;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method
