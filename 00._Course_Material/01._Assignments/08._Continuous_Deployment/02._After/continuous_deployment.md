# Continuous Deployment


Achieve full and automatic continous deployment.

**Type**: Group Work

**Deadline**: No rush. If you are struggling with achieving full CD or experimenting with different ways to achieve it, then spending a few weeks is fine.

**Motivation**: Solve this task before the `user feedback survey` to enjoy that the functionality automatically gets shipped when you push to trunk. 

---

## Full CD

There are many ways to achieve continous deployment. 

Brainstorm with your group and you could even try different ways in different branches / test repos. 

You should aim for "full CD". What is meant by this is that it should work on a fresh server with all the necessary tools installed. 

If your solution requires transfering files to the server, then build it into the workflow.

---

## [Optional / Individual] Whoknows Variations

I offer a solution that you are free to discard for something better. But try it out individually so you get a feel for what the workflow does.

Try out the [continuous deployment branch](https://github.com/who-knows-inc/whoknows_variations/tree/continuous_deployment) to get a taste of one way to make it work. 

The steps are:

1. Fork the repository to your user, check out the branch.

2. Deploy any server that you can SSH into with an SSH key.

3. Run the `setup.sh` script in the root of the repository. It will prompt you for values to put in GitHub Secrets so that the workflow will work. 

4. Trigger the workflow and see it deploy the whoknows legacy app on `<ip_address>:8080`