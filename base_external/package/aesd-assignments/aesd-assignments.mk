culinux/assignment-4-Chizxsy/assignment-autotest/test/assignment4-buildroot
Test of assignment assignment4-buildroot complete with success
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ ^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ 


##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

#TODO: Fill up the contents below in order to reference your assignment 3 git contents
culinux/assignment-4-Chizxsy/assignment-autotest/test/assignment4-buildroot
Test of assignment assignment4-buildroot complete with success
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ -----BEGIN OPENSSH PRIVATE KEY-----^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ ^C
charlie-fischer@charlie-fischer-Aspire-E1-472P:~/culinux/assignment-4-Chizxsy$ 

AESD_ASSIGNMENTS_VERSION = c455ffa3fa374fccc0267eaa837d0a3fdd946006
# Note: Be sure to reference the *ssh* repository URL here (not https) to work properly
# with ssh keys and the automated build/test system.
# Your site should start with git@github.com:
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Chizxsy.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
	$(MAKE) $(TARGET_CONFIGURE_OPTS) -C $(@D)/finder-app CROSS_COMPILE=$(TARGET_CROSS) all
endef

# TODO add your writer, finder and finder-test utilities/scripts to the installation steps below
define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
	$(INSTALL) -d 0755 $(@D)/conf/ $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/conf/* $(TARGET_DIR)/etc/finder-app/conf/
	$(INSTALL) -m 0755 $(@D)/assignment-autotest/test/assignment4/* $(TARGET_DIR)/bin
	#install writer, finder, and finder-test
	$(INSTALL) -m 0755 $(@D)/finder-app/writer $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/writer.sh $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/finder.sh $(TARGET_DIR)/bin
	$(INSTALL) -m 0755 $(@D)/finder-app/finder-test.sh $(TARGET_DIR)/bin



endef

$(eval $(generic-package))
