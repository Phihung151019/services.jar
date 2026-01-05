.class public final synthetic Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;
.super Ljava/lang/Object;
.source "qb/104190634 8d7d8e6ef21e39a67cd47e062606d74a8e3763a481f56c365f28d7adc1854ed1"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

.field public final synthetic f$1:Ljava/io/FileDescriptor;

.field public final synthetic f$2:Ljava/io/PrintWriter;

.field public final synthetic f$3:[Ljava/lang/String;

.field public final synthetic f$4:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/inputmethod/InputMethodManagerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iput-object p2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$1:Ljava/io/FileDescriptor;

    iput-object p3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$2:Ljava/io/PrintWriter;

    iput-object p4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$3:[Ljava/lang/String;

    iput-boolean p5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$4:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$0:Lcom/android/server/inputmethod/InputMethodManagerService;

    iget-object v2, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$1:Ljava/io/FileDescriptor;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$2:Ljava/io/PrintWriter;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$3:[Ljava/lang/String;

    iget-boolean v5, p0, Lcom/android/server/inputmethod/InputMethodManagerService$$ExternalSyntheticLambda28;->f$4:Z

    move-object v1, p1

    check-cast v1, Lcom/android/server/inputmethod/UserData;

    sget-boolean p0, Lcom/android/server/inputmethod/InputMethodManagerService;->DEBUG_SEP:Z

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/inputmethod/InputMethodManagerService;->dumpAsStringNoCheckForUser(Lcom/android/server/inputmethod/UserData;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;Z)V

    return-void
.end method
