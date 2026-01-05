.class public final Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Landroid/database/DatabaseErrorHandler;


# instance fields
.field public final mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/database/DefaultDatabaseErrorHandler;

    invoke-direct {v0}, Landroid/database/DefaultDatabaseErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;->mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    return-void
.end method


# virtual methods
.method public final onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    const-string v0, "DiscreteOpsDbHelper"

    const-string/jumbo v1, "discrete ops database got corrupted."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/appop/DiscreteOpsDbHelper$DiscreteOpsDatabaseErrorHandler;->mDefaultDatabaseErrorHandler:Landroid/database/DefaultDatabaseErrorHandler;

    invoke-virtual {p0, p1}, Landroid/database/DefaultDatabaseErrorHandler;->onCorruption(Landroid/database/sqlite/SQLiteDatabase;)V

    return-void
.end method
