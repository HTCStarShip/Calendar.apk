.class Lcom/htc/calendar/AgendaListView$2;
.super Ljava/lang/Object;
.source "AgendaListView.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/calendar/AgendaListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/htc/calendar/AgendaListView;


# direct methods
.method constructor <init>(Lcom/htc/calendar/AgendaListView;)V
    .locals 0
    .parameter

    .prologue
    .line 473
    iput-object p1, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 10
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    const v9, 0x108003c

    const/16 v8, 0x65

    const/16 v7, 0x8

    const/4 v5, 0x7

    const/4 v6, 0x0

    .line 476
    const-string v2, "AgendaListView"

    const-string v3, "onCreateContextMenu"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mSelectedEventTitle:Ljava/lang/String;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1700(Lcom/htc/calendar/AgendaListView;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 485
    const/4 v2, 0x5

    const v3, 0x7f08007f

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 486
    .local v1, item:Landroid/view/MenuItem;
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1800(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 488
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/widget/HtcListViewEx;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1900(Lcom/htc/calendar/AgendaListView;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mSelectedEventId:J
    invoke-static {v3}, Lcom/htc/calendar/AgendaListView;->access$1200(Lcom/htc/calendar/AgendaListView;)J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/htc/calendar/Utils;->getEventAccessControlByID(Landroid/content/Context;J)I

    move-result v0

    .line 491
    .local v0, accessControlLabel:I
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 492
    const v2, 0x7f0800ae

    invoke-interface {p1, v6, v5, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 494
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1800(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 495
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 496
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 500
    const v2, 0x7f0800b0

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 502
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1800(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 503
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 546
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mSelectedEventId:J
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1200(Lcom/htc/calendar/AgendaListView;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_1

    .line 547
    const/16 v2, 0xc

    const v3, 0x7f08003e

    invoke-interface {p1, v6, v2, v6, v3}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 548
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1800(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 549
    const v2, 0x2080337

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 551
    :cond_1
    return-void

    .line 505
    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 508
    const v2, 0x7f0800b0

    invoke-interface {p1, v6, v7, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 510
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1800(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 511
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 513
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 514
    const v2, 0x7f0800ae

    invoke-interface {p1, v6, v5, v6, v2}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 516
    iget-object v2, p0, Lcom/htc/calendar/AgendaListView$2;->this$0:Lcom/htc/calendar/AgendaListView;

    #getter for: Lcom/htc/calendar/AgendaListView;->mContextMenuHandler:Lcom/htc/calendar/AgendaListView$ContextMenuHandler;
    invoke-static {v2}, Lcom/htc/calendar/AgendaListView;->access$1800(Lcom/htc/calendar/AgendaListView;)Lcom/htc/calendar/AgendaListView$ContextMenuHandler;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 517
    const v2, 0x108003e

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 518
    invoke-interface {v1, v8}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    goto :goto_0
.end method
