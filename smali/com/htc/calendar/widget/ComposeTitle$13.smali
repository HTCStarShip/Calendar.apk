.class Lcom/htc/calendar/widget/ComposeTitle$13;
.super Ljava/lang/Object;
.source "ComposeTitle.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/widget/ComposeTitle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/widget/ComposeTitle;


# direct methods
.method constructor <init>(Lcom/htc/calendar/widget/ComposeTitle;)V
    .locals 0
    .parameter

    .prologue
    .line 3072
    iput-object p1, p0, Lcom/htc/calendar/widget/ComposeTitle$13;->this$0:Lcom/htc/calendar/widget/ComposeTitle;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "dialog"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3075
    const/16 v0, 0x54

    if-ne p2, v0, :cond_0

    .line 3076
    const/4 v0, 0x1

    .line 3078
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
