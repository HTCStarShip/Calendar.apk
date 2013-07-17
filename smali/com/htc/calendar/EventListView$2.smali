.class Lcom/htc/calendar/EventListView$2;
.super Ljava/lang/Object;
.source "EventListView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/EventListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/EventListView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/EventListView;)V
    .locals 0
    .parameter

    .prologue
    .line 402
    iput-object p1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 4
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const/4 v3, 0x0

    .line 405
    const-string v1, "EventListView"

    const-string v2, "onCreateContextMenu"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$1100(Lcom/htc/calendar/EventListView;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 410
    iget-object v1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$1100(Lcom/htc/calendar/EventListView;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$1100(Lcom/htc/calendar/EventListView;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 411
    :cond_0
    const v1, 0x7f080078

    invoke-interface {p1, v1}, Landroid/view/ContextMenu;->setHeaderTitle(I)Landroid/view/ContextMenu;

    .line 417
    :cond_1
    const/4 v1, 0x5

    const v2, 0x7f08007f

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 418
    .local v0, item:Landroid/view/MenuItem;
    iget-object v1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$1200(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventListView$ContextMenuHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 425
    iget-object v1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mSelectedEventEditable:Z
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$1300(Lcom/htc/calendar/EventListView;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 427
    const/4 v1, 0x7

    const v2, 0x7f0800ae

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 428
    iget-object v1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$1200(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventListView$ContextMenuHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 429
    const v1, 0x108003e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 430
    const/16 v1, 0x65

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 433
    const/16 v1, 0x8

    const v2, 0x7f0800b0

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 434
    iget-object v1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$1200(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventListView$ContextMenuHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 435
    const v1, 0x108003c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 449
    :cond_2
    const/16 v1, 0xc

    const v2, 0x7f08003e

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 450
    iget-object v1, p0, Lcom/htc/calendar/EventListView$2;->this$0:Lcom/htc/calendar/EventListView;

    #getter for: Lcom/htc/calendar/EventListView;->mContextMenuHandler:Lcom/htc/calendar/EventListView$ContextMenuHandler;
    invoke-static {v1}, Lcom/htc/calendar/EventListView;->access$1200(Lcom/htc/calendar/EventListView;)Lcom/htc/calendar/EventListView$ContextMenuHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 451
    const v1, 0x2080337

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 452
    return-void
.end method
