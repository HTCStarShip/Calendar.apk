.class Lcom/htc/calendar/IcsImportActivity$1;
.super Ljava/lang/Object;
.source "IcsImportActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/IcsImportActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/IcsImportActivity;


# direct methods
.method constructor <init>(Lcom/htc/calendar/IcsImportActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 55
    iput-object p1, p0, Lcom/htc/calendar/IcsImportActivity$1;->this$0:Lcom/htc/calendar/IcsImportActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v0, 0x1

    .line 57
    const/4 v1, 0x4

    if-ne p2, v1, :cond_1

    .line 58
    iget-object v1, p0, Lcom/htc/calendar/IcsImportActivity$1;->this$0:Lcom/htc/calendar/IcsImportActivity;

    invoke-virtual {v1}, Lcom/htc/calendar/IcsImportActivity;->finish()V

    .line 63
    :cond_0
    :goto_0
    return v0

    .line 60
    :cond_1
    const/16 v1, 0x54

    if-eq p2, v1, :cond_0

    .line 63
    const/4 v0, 0x0

    goto :goto_0
.end method
